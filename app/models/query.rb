require 'open-uri'

class Query < ActiveRecord::Base
  belongs_to :run
  belongs_to :phrase
  has_many :query_results

  def execute()
    self.response= open(self.url).read
    self.save!
    parsed = JSON.parse(self.response)
    pos = 0
    for articleJson in parsed['articles']
      page = Page.find_or_new(
        :wiki_id => articleJson['wikiId'],
        :article_id => articleJson['articleId'],
        :url => articleJson['url'],
        :lang => articleJson['lang'],
      )
      result = Result.find_or_create(
        :page => page,
        :phrase => self.phrase,
      )
      pos += 1
      self.query_results.create(
        :page => page,
        :result => result,
        :position => pos,
      )
    end
  end

  def score
    query_results.map{|x| x.score}.inject(0, :+)
  end
end

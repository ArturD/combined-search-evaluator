require 'open-uri'

class Query < ActiveRecord::Base
  belongs_to :run
  belongs_to :phrase

  def execute()
    self.response= open(self.url).read
    self.save!
    parsed = JSON.parse(self.response)
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
    end
  end
end

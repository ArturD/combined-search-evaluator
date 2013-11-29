class Run < ActiveRecord::Base
  has_many :queries

  def self.do(url, description)
    run = Run.create
    for phrase in Phrase.all
      q = run.queries.create(
        :url => "#{url}?#{ { query: phrase.text }.to_query }",
        :phrase => phrase,
      )
      q.execute
    end
  end
end

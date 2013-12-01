class Run < ActiveRecord::Base
  has_many :queries
  validates :root_url, presence: true

  def self.do(url, description)
    run = Run.create(:root_url=>url, :description => description)
    run.save!
    for phrase in Phrase.all
      q = run.queries.create(
        :url => "#{url}?#{ { query: phrase.text }.to_query }",
        :phrase => phrase,
      )
      q.execute
    end
    return run
  end

  def score
    queries.map{|x| x.score}.inject(0, :+)
  end
end

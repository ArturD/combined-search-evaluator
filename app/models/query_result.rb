class QueryResult < ActiveRecord::Base
  belongs_to :page
  belongs_to :result
  belongs_to :query

  def score
    (2**-position) * (result.score or 0)
  end
end

class Result < ActiveRecord::Base
  belongs_to :page
  belongs_to :phrase
  validates :page_id, presence: true
  validates :phrase_id, presence: true

  def self.find_or_create(o)
    result = Result.find(:first,
      :conditions => { :page_id => o[:page].id, :phrase_id => o[:phrase].id }
      )
    if result == nil
      result = Result.create({ :page_id => o[:page].id, :phrase_id => o[:phrase].id })
    end
    return result
  end
end

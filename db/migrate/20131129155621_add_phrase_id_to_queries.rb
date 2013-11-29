class AddPhraseIdToQueries < ActiveRecord::Migration
  def change
    add_column :queries, :phrase_id, :integer
  end
end

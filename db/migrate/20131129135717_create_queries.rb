class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :run_id
      t.string :url
      t.text :response

      t.timestamps
    end
  end
end

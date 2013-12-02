class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :page_id
      t.integer :phrase_id
      t.float :score, default: 0, null: false
      t.text :comment
      t.string :who

      t.timestamps
    end
  end
end

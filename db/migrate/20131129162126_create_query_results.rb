class CreateQueryResults < ActiveRecord::Migration
  def change
    create_table :query_results do |t|
      t.integer :query_id
      t.integer :page_id
      t.integer :result_id
      t.integer :position

      t.timestamps
    end
  end
end

class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.string :root_url
      t.text :description

      t.timestamps
    end
  end
end

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :wiki_id
      t.integer :article_id
      t.string :title
      t.string :url
      t.string :lang

      t.timestamps
    end
  end
end

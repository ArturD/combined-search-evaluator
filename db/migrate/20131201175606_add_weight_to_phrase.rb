class AddWeightToPhrase < ActiveRecord::Migration
  def change
    add_column :phrases, :weight, :float, :default => 1
  end
end

class AddDescToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :desc, :string
  end

  def self.down
    remove_column :items, :desc
  end
end

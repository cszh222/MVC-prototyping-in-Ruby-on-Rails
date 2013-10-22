class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.int :quantity
      t.has_many :items

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end

class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :status
      t.has_many :items
      t.belongs_to :users

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end

class AddUniqunessIndexForProject < ActiveRecord::Migration
  def self.up
    add_index :projects, :abbreviation, :unique => true
    add_index :projects, :name, :unique => true
  end

  def self.down
    remove_index :projects, :abbreviation
    remove_index :projects, :name
  end
end

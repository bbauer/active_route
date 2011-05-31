class AddTypeColumnToRoute < ActiveRecord::Migration
  def self.up
    add_column :routes, :climbing_type, :string
  end

  def self.down
    remove_column :routes, :climbing_type
  end
end

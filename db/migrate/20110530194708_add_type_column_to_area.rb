class AddTypeColumnToArea < ActiveRecord::Migration
  def self.up
    add_column :areas, :climbing_type,    :string
  end

  def self.down
    remove_column :areas, :climbing_type
  end
end

class RemoveSetterColumnFromRoute < ActiveRecord::Migration
  def self.up
    remove_column :routes, :setter
  end

  def self.down
    add_column :areas, :climbing_type,    :string
  end
end

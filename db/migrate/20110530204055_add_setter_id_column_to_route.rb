class AddSetterIdColumnToRoute < ActiveRecord::Migration
  def self.up
    add_column :routes, :setter_id,    :integer
  end

  def self.down
    remove_column :routes, :setter_id
  end
end

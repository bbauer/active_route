class EditSettersDb < ActiveRecord::Migration
  def self.up
    add_column :setters, :name,    :string
    remove_column :setters, :first_name
    remove_column :setters, :last_name
  end

  def self.down
    add_column :setters, :first_name,    :string
    add_column :setters, :last_name,    :string
    remove_column :setters, :name
  end
end

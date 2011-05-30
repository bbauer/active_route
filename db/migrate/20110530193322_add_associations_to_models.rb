class AddAssociationsToModels < ActiveRecord::Migration
  def self.up
    add_column :routes, :area_id,    :integer
    add_column :ratings, :route_id,    :integer
  end

  def self.down
    remove_column :routes, :area_id
    remove_column :ratings, :route_id
  end
end

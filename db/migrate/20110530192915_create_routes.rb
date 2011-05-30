class CreateRoutes < ActiveRecord::Migration
  def self.up
    create_table :routes do |t|
      t.string :name
      t.string :color
      t.integer :grade
      t.string :setter
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :routes
  end
end

class CreateBoulders < ActiveRecord::Migration
  def self.up
    create_table :boulders do |t|
      t.string :color
      t.float :grade
      t.string :name
      t.text :description
      t.integer :area_id
      t.integer :setter_id

      t.timestamps
    end
  end

  def self.down
    drop_table :boulders
  end
end

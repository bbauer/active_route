class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.string :name
      t.text :location
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end

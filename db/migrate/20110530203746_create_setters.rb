class CreateSetters < ActiveRecord::Migration
  def self.up
    create_table :setters do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end

  def self.down
    drop_table :setters
  end
end

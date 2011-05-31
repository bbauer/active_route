class ChangeGradeColumns < ActiveRecord::Migration
  def self.up
    change_table :ratings do |t|
      t.change :rating, :float
    end
    change_table :routes do |t|
      t.change :grade, :float
    end
  end

  def self.down
    change_table :ratings do |t|
      t.change :rating, :integer
    end
    change_table :routes do |t|
      t.change :grade, :integer
    end
  end
end

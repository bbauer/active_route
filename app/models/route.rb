class Route < ActiveRecord::Base
  belongs_to :area
  has_many :ratings
end

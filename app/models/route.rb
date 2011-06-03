class Route < ActiveRecord::Base

  belongs_to :area
  belongs_to :setter
  has_many :issues, :dependent => :destroy
  has_many :ratings, :dependent => :destroy
  
  named_scope :brian, :conditions => {:setter_id => 2}
  named_scope :chuck, :conditions => {:setter_id => 1}
  named_scope :billy, :conditions => {:setter_id => 3}

  def consensus
    id = self.id
    ratings = Rating.find_all_by_route_id(id)
    if ratings.count > 0
      total_rating = ''.to_f
      ratings.each do |rating|
        total_rating = total_rating + rating.rating
      end
      consensus = sprintf("%.3f", total_rating / ratings.count)
    else
      consensus = "N/A"
    end
  end
  
end

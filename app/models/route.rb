class Route < ActiveRecord::Base

  belongs_to :area
  belongs_to :setter
  has_many :ratings
  
  named_scope :pink, :conditions => {:color => 'Pink'}
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
      consensus = sprintf("%.4f", total_rating / ratings.count)
    else
      consensus = "N/A"
    end
  end
  
  def color_tag
    "<span class='tag_pink'>#{self.color}</span>"
  end
  
end

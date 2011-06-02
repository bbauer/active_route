ActiveAdmin.register Route do
  
  scope :all, :default => true
  scope :brian
  scope :chuck
  scope :billy
  
  index do
    #id_column
    column ("Color", :sortable => :color) {|route| status_tag(route.color) }
    #column :grade
    column("Grade", :sortable => :grade) {|route| "5.#{route.grade.to_i}" }
    column :name
    column("Consensus") {|route| route.consensus }
    #column :created_at
    column("Age", :sortable => :created_at) {|route| distance_of_time_in_words(Time.now,route.created_at) }
    column("Setter", :setter, :sortable => :setter_id)
    column("Area", :area, :sortable => :area_id)
    default_actions
  end
  
  sidebar "Climber Consensus", :only => :show do
    div do
      render('/admin/dashboard/client_consensus')
    end
  end
  
  sidebar "Your Grade", :only => :show do
    div do
      render('/admin/dashboard/add_rating')
    end
  end
  
end


ActiveAdmin.register Route do
  index do
    id_column
    column :name
    column :color
    column :grade
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


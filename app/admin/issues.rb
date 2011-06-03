ActiveAdmin.register Issue do
  index do
    id_column
    column ("Status", :sortable => :status) {|route| status_tag(route.status) }
    column("Route", :route, :sortable => :route_id)
    column :title
    column :description
    column :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :description
    end
    f.inputs "Status" do
      f.input :status, :as => :select, :collection => ["Open", "Closed"], :selected => "Open"
    end
    f.buttons
  end
  
end

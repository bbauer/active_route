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
end

ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
    
  # section "Recent Routes", :priority => 1 do
  #     table_for Route.order('id desc').limit(9) do
  #       #column :name
  #       column ("Color", :sortable => :color) {|route| status_tag(route.color) }
  #       column("Grade", :sortable => :grade) {|route| "5.#{route.grade.to_i}" }
  #       column("Setter", :setter, :sortable => :setter_id)
  #       column("Area", :area, :sortable => :area_id)
  #     end
  #   end
  
  section "Recent Route Issues", :priority => 1 do
    table_for Issue.order('id desc').limit(9) do 
      column("Status", :sortable => :status) {|issue| status_tag(issue.status) }
      column("Route", :route)
      column("Issue", :title, :sortable => :title)
      column("") {|issue| link_to("View", "issues/#{issue.id}") }
    end
  end
  
  section "Current Route Distribution", :priority => 2 do
    div do
      render('/admin/dashboard/route_chart')
    end
  end
  
  # == Render Partial Section
  # The block is rendererd within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end

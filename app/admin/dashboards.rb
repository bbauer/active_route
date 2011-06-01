ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
    
  section "Recent Routes", :priority => 1 do
    table_for Route.order('id desc').limit(10) do
      column :name
      column ("Color", :sortable => :color) {|route| status_tag(route.color) }
      column :grade
      column("Consensus") {|route| route.consensus }
      #column :created_at
      column("Age", :sortable => :created_at) {|route| distance_of_time_in_words(Time.now,route.created_at) }
      column("Setter", :setter, :sortable => :setter_id)
      column("Area", :area, :sortable => :area_id)
    end
  end
  
  section "Recent Boulders", :priority => 2 do
    table_for Boulder.order('id desc').limit(10) do
      column :name
      column ("Color", :sortable => :color) {|route| status_tag(route.color) }
      column :grade
      column("Consensus") {|route| route.consensus }
      #column :created_at
      column("Age", :sortable => :created_at) {|route| distance_of_time_in_words(Time.now,route.created_at) }
      column("Setter", :setter, :sortable => :setter_id)
      column("Area", :area, :sortable => :area_id)
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

class WelcomeController < ApplicationController
  def index
    @pages = Page.all
    @routes = Route.find(:all, :limit => 2)
  end
end

class DashboardsController < ApplicationController
 def show
   @home = Home.find {|home| current_user.home == home }
   @homies = User.all.select(params[:home] == @home)
 end
end
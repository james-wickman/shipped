class UsersController < ApplicationController
  def index
  	@user = current_user
  	@jobs = Job.all
  	@ship = Ship.new
  	@ships = @user.ships
  	@ship_job = ShipJob.new
  	
  end

  def show
  end
end
 
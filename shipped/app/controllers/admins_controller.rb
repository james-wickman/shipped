class AdminsController < ApplicationController
  def index
  	@users = User.all
  	@ships = Ship.all
  	@jobs = Job.all
  end

  def show
  end
end

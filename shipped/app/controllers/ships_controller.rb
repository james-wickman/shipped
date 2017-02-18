class ShipsController < ApplicationController
  def index
  end
 
  def new
    @user = current_user
    @ship = Ship.new
  end 

  def create
    @user = current_user
    @ship_job = ShipJob.new
    @ship = Ship.new(ship_params)
    respond_to do |format|
      if @ship.save
        format.html { redirect_to users_index_path, notice: 'Ship was successfully created.' }
        format.js  
        format.json { render json: @user, status: :created, location: @user} 
      else 
        format.json { render :json => { :error => @ship.errors.full_messages }, status: 400 }
        format.html { render action: "new" }
      end
    end
  end 

  def show
    @user = current_user
    @ship = Ship.find(params[:id])
    @jobs = Job.where(origin: @ship.location) 
    @ship_job = ShipJob.new
  end

  def edit
    @user = current_user
    @ship = Ship.find(params[:id])
  end

  def update
    @user = current_user 
    @ship = Ship.find(params[:id])
    if @ship.update_attributes(ship_params)
      redirect_to users_index_path
    else
      render "edit"
    end 
  end

  def destroy
    @user = current_user
    @ship = Ship.find(params[:id]).destroy
    
    respond_to do |format|
      format.js #look for views/users/destroy.js.erb
      # format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private

  def ship_params   #controller_params
    params.require(:ship).permit(:name, :containers_possible, :location, :user_id, :boat_photo)
  end
end

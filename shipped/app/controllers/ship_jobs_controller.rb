class ShipJobsController < ApplicationController
  def index
  end

  def create
  	@ship_job = ShipJob.new
  	if @ship_job.update_attributes(ship_job_params)
      respond_to do |format|
      format.js #look for views/users/destroy.js.erb
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def destroy
    @ship_job = ShipJob.find(params[:id]).destroy
    redirect_to admins_index_path
  end

  private
  
  def ship_job_params   #controller_params
    params.require(:ship_job).permit(:ship_id, :job_id)
  end
end

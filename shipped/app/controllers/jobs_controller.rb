class JobsController < ApplicationController
  def index
  end

  def new
    @admin = current_admin
    @job = Job.new
  end

  def create
    @admin = current_admin
    @job = Job.new(job_params)
    if @job.save
      redirect_to admins_index_path
    else 
      render "new"
    end
  end

  def show
    @jobs = Job.all
  end

  def edit
    @admin = current_admin
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      redirect_to admins_index_path
    end
  end

  def destroy
    @job = Job.find(params[:id]).destroy
    redirect_to admins_index_path
  end

  private
  
  def job_params   #controller_params
    params.require(:job).permit(:containers_needed, :cost, :description, :origin, :destination, :user_id)
  end
end

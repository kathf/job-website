class JobsController < ApplicationController
  before_action :find_job, except: [ :index, :new, :create ]

  def find_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :company, :salary, :location, :start)
  end

  def index
    @jobs = Job.all
  end

  def show
    @job.increment!(:views)
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    redirect_to job_url(@job), notice: 'Job Created'
  end

  def edit; end

  def update
    @job.update_attributes(job_params)
    redirect_to job_path(@job), notice: 'Job Updated!'
  end

  def destroy
    @job.destroy
    redirect_to jobs_path, notice: 'Job Deleted'
  end
end

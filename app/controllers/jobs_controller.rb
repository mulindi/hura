class JobsController < ApplicationController
  before_action :set_job, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @jobs = if params.key?(:job_type)
              Job.where(job_type: params[:job_type]).order('created_at DESC')
            else
              Job.all.order('created_at DESC')
            end
  end

  def show; end

  def new
    @job = current_user.jobs.build
  end

  def create; end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :company, :url, :job_type, :remote, :apply_url, :avatar)
  end
end

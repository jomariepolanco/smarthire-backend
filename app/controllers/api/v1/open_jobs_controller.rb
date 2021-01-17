class Api::V1::OpenJobsController < ApplicationController
  before_action :set_open_job, only: [:show, :update, :destroy]

  # GET /open_jobs
  def index
    @open_jobs = OpenJob.all

    render json: @open_jobs
  end

  # GET /open_jobs/1
  def show
    render json: @open_job
  end

  # POST /open_jobs
  def create
    @open_job = OpenJob.new(open_job_params)

    if @open_job.save
      render json: @open_job, status: :created
    else
      render json: @open_job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /open_jobs/1
  def update
    if @open_job.update(open_job_params)
      render json: @open_job
    else
      render json: @open_job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /open_jobs/1
  def destroy
    @open_job.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_job
      @open_job = OpenJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def open_job_params
      params.require(:open_job).permit(:title, :description, :pay, :due_date, :point_of_contact, :user_id, :company_id)
    end
end

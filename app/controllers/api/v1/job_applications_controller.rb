class Api::V1::JobApplicationsController < ApplicationController
  before_action :set_job_application, only: [:show, :update, :destroy]

  # GET /job_applications
  def index
    @job_applications = JobApplication.all.includes(:candidate, :open_job)

    render json: @job_applications
  end

  # GET /job_applications/1
  def show
    render json: @job_application
  end

  # POST /job_applications
  def create
    @job_application = JobApplication.new(job_application_params)

    if @job_application.save
      render json: @job_application, status: :created
    else
      render json: @job_application.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_applications/1
  def update
    if @job_application.update(job_application_params)
      render json: @job_application
    else
      render json: @job_application.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_applications/1
  def destroy
    @job_application.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_application
      @job_application = JobApplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_application_params
      params.require(:job_application).permit(:candidate_id, :open_job_id, :red, :yellow, :green)
    end
end

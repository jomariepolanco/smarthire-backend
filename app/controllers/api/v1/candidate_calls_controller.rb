class Api::V1::CandidateCallsController < ApplicationController
  before_action :set_candidate_call, only: [:show, :update, :destroy]

  # GET /candidate_calls
  def index
    @candidate_calls = CandidateCall.all

    render json: @candidate_calls
  end

  # GET /candidate_calls/1
  def show
    render json: @candidate_call
  end

  # POST /candidate_calls
  def create
    @candidate_call = CandidateCall.new(candidate_call_params)

    if @candidate_call.save
      render json: @candidate_call, status: :created
    else
      render json: @candidate_call.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /candidate_calls/1
  def update
    if @candidate_call.update(candidate_call_params)
      render json: @candidate_call
    else
      render json: @candidate_call.errors, status: :unprocessable_entity
    end
  end

  # DELETE /candidate_calls/1
  def destroy
    @candidate_call.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate_call
      @candidate_call = CandidateCall.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def candidate_call_params
      params.require(:candidate_call).permit(:date, :notes, :user_id, :candidate_id)
    end
end

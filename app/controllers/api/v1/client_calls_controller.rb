class Api::V1::ClientCallsController < ApplicationController
  before_action :set_client_call, only: [:show, :update, :destroy]

  # GET /client_calls
  def index
    @client_calls = ClientCall.all.includes(:user, :company)

    render json: @client_calls
  end

  # GET /client_calls/1
  def show
    render json: @client_call
  end

  # POST /client_calls
  def create
    @client_call = ClientCall.new(client_call_params)

    if @client_call.save
      render json: @client_call, status: :created
    else
      render json: @client_call.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /client_calls/1
  def update
    if @client_call.update(client_call_params)
      render json: @client_call
    else
      render json: @client_call.errors, status: :unprocessable_entity
    end
  end

  # DELETE /client_calls/1
  def destroy
    @client_call.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_call
      @client_call = ClientCall.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_call_params
      params.require(:client_call).permit(:date, :time, :notes, :user_id, :company_id)
    end
end

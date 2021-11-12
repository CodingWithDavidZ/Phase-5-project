class UsersTicketsController < ApplicationController
  before_action :set_users_ticket, only: [:show, :update, :destroy]

  # GET /users_tickets
  def index
    @users_tickets = UsersTicket.all

    render json: @users_tickets
  end

  # GET /users_tickets/1
  def show
    render json: @users_ticket
  end

  # POST /users_tickets
  def create
    @users_ticket = UsersTicket.new(users_ticket_params)

    if @users_ticket.save
      render json: @users_ticket, status: :created, location: @users_ticket
    else
      render json: @users_ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users_tickets/1
  def update
    if @users_ticket.update(users_ticket_params)
      render json: @users_ticket
    else
      render json: @users_ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users_tickets/1
  def destroy
    @users_ticket.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_ticket
      @users_ticket = UsersTicket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_ticket_params
      params.require(:users_ticket).permit(:ticket_id, :user_id)
    end
end

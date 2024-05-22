class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.new
    @rooms = Room.all

    render 'index'
  end

  def show
    @room = Room.new
    @rooms = Room.all
    @single_room = Room.find(params[:id])

    @message = Message.new
    @messages = @single_room.messages.order(created_at: :asc)

    render 'index'
  end

  def create
    @room = Room.create(name: params[:room][:name])
  end
end

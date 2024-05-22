class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.new
    @rooms = Room.all
  end

  def create
    @room = Room.create(name: params["room"]["name"])
  end
end

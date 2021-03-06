class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @pins = @user.pins
  end

  def index
    @users = User.all
  end
end
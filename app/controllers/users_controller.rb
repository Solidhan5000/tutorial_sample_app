class UsersController < ApplicationController

  # Used for adding new User
  def new
  end

  def show
    @user = User.find(params[:id])
  end
end

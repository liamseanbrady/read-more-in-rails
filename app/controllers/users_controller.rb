class UsersController < ApplicationController
  def index
    if params[:user_id]
      @users = User.where('id < ?', params[:user_id]).limit(2)
    else
      @users = User.limit(2)
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit

  end

  def update

  end

  def show
    @user = User.find(params[:id])
  end
end
class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @nickname = current_user.nickname
    @tweets = current_user.tweets
    @text = current_user.text
  end
  def edit
  end
end
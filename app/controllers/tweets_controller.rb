class TweetsController < ApplicationController
  def index
    @tweets = Tweet.includes(:user)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text).merge(user_id: current_user.id)
  end
end

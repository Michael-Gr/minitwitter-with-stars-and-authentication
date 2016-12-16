class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :new]
  # GET /tweets
  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  # GET /tweets/1
  def show
    @tweet = Tweet.find(params[:id])
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
    @tweet = Tweet.find(params[:id])
  end

  # GET /heart_tweet_path
  def heart
    @tweet = Tweet.find(params[:id])
    if @tweet.hearts.where(user: current_user).count == 0
      @tweet.hearts.create(user: current_user)
      redirect_to tweets_url
    else
      redirect_to tweets_url, notice: "Hey, you already did that!"
    end

  end

  def retweet
    @tweet = Tweet.find(params[:id])
    if @tweet.retweets.where(user: current_user).count == 0
      @tweet.retweets.create(user: current_user)
      redirect_to tweets_url
    else
      redirect_to tweets_url, notice: "Hey, you already did that!"
    end

  end

  def reply
    @tweet = Tweet.find(params[:id])
    if @tweet.replies.where(user: current_user).count == 0
      @tweet.replies.create(user: current_user)
      redirect_to tweets_url
    else
      redirect_to tweets_url, notice: "Hey, you already did that!"
    end

  end

  # POST /tweets
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user

    if @tweet.save
      redirect_to tweets_url, notice: 'Tweet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tweets/1
  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to @tweet, notice: 'Tweet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_url, notice: 'Tweet was successfully destroyed.'
  end

  private
  # Only allow a trusted parameter "white list" through.
  def tweet_params
    params.require(:tweet).permit(:text, :user_name)
  end
end

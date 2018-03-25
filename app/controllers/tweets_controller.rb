class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    # 記事一覧用
    @tweets = Tweet.all
    # 最新記事用
    @new_tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new # フォーム用の空のインスタンスを生成する。
  end

  def create
    @tweet = Tweet.new(tweet_params) # ストロングパラメータを引数に
    @tweet.save # saveをしてデータベースに保存する。
    redirect_to @tweet # showページにリダイレクト
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    redirect_to @tweet
  end

  def destroy
  end

  private

  def tweet_params # ストロングパラメータを定義する
    params.require(:tweet).permit(:description, :image, :user_id, :category, :nick_name)
  end
end

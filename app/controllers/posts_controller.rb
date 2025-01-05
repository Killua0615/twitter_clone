class PostsController < ApplicationController
  # ログインしていないユーザーをログインページにリダイレクト
  before_action :authenticate_user!

  def index
    # 仮のデータ
    @posts = ["投稿1", "投稿2", "投稿3"]
  end
end

class HomeController < ApplicationController
  def index
    @articles = Article.all
  end
  def get_record
    @articles = Article.all
  end
end

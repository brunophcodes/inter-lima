class PagesController < ApplicationController
  def home
    @banner_articles = Article.all.reverse
  end

  def about
  end
end

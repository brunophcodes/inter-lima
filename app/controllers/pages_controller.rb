# frozen_string_literal:true

# Manage the different pages of the website
class PagesController < ApplicationController
  def home
    @banner_articles = Article.all.reverse
  end

  def about; end
end

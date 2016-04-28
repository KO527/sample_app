class StaticController < ApplicationController
  def home
    @categories = Category.roots
  end
end

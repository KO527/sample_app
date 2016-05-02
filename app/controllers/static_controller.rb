class StaticController < ApplicationController
  def home
    @categories = Category.roots
  end
  def signout
   
  end
end

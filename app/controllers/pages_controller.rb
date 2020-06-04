class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "Muhammad Mohsin Mahmood"
  end

  def home
    @projects = Project.all
  end

  def error
  end
end

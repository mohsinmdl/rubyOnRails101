class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def contact
  end

  def about
    @title = "Muhammad Mohsin Mahmood"
  end

  def home
    @projects = Project.all
  end

  def index
    @projects = Project.all
  end

  def error
  end
end

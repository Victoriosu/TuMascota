class DashboardsController < ApplicationController

  def index
    @pets = Pet.all
  end

end
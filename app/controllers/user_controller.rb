class UserController < ApplicationController
  def index
    @response = HTTParty.get(http://chefbuddy.herokuapp.com/api/v1/random_recipe/)
  end
end

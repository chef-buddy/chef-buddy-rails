class HomeController < ApplicationController
  def index
    @response = HTTParty.post('http://chefbuddy.herokuapp.com/api/v1/suggested_recipe/')
  end

  def random
    @response = HTTParty.post('http://chefbuddy.herokuapp.com/api/v1/suggested_recipe/')
  end
end

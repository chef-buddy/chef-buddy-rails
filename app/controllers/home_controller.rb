class HomeController < ApplicationController
  def index
    @response = HTTParty.get('http://chefbuddy.herokuapp.com/api/v1/suggested_recipe/')
  end
end

class CardController < ApplicationController
  def show
    @response = HTTParty.get('http://chefbuddy.herokuapp.com/api/v1/suggested_recipe/')
  end
end

class Api::V1::HomeController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: current_user
  end

end

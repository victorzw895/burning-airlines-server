# frozen_string_literal: true

class SearchController < ApplicationController
  def find
    @data = Flight.where(
      origin: params[:origin],
      destination: params[:destination]
    )
    render json: @data
  end
end

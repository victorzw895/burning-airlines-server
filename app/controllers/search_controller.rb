# frozen_string_literal: true

class SearchController < ApplicationController
  def find
    @data = Flight.where(
      origin: params[:origin],
      destination: params[:destination],
      name: params[:name]
    )
    render json: @data
  end
end

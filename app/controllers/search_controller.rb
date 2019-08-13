# frozen_string_literal: true

class SearchController < ApplicationController
  # Mocking API integration for React page
  def find
    @data = [{
      date: '12/12/2019',
      flight: '050',
      origin: params[:origin],
      destination: params[:destination],
      airplane: '150'

    }]
    render json: @data
  end
end

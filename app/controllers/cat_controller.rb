class CatController < ApplicationController
  def index
    response = HTTParty.get('http://thecatapi.com/api/images/get?format=xml')
    parsed_response = Hash.from_xml(response.body)
    puts parsed_response

    render json: format_data(parsed_response), status: 200
  end

  private

  def format_data(response)
    response['response']['data']['images']#['image']
  end
end

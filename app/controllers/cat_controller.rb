class CatController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :creation_error

  def index
    response = HTTParty.get('http://thecatapi.com/api/images/get?format=xml')
    parsed_response = Hash.from_xml(response.body)

    if format_data(parsed_response).present?
      image = format_data(parsed_response)['image']

      History.create!({
        id: image['id'],
        url: image['url'],
        source_url: image['source_url']
      })
    end

    render json: format_data(parsed_response), status: 200
  end

  private

  def format_data(response)
    response['response']['data']['images'] rescue {}
  end

  def creation_error(exception)
    render json: exception.record.errors.messages,
           title: 'Failed to save new cat.',
           status: :bad_request
  end
end

class CarbonEmissionsController < ApplicationController
  def index
    co2_emission = HTTP.auth("Bearer #{Rails.application.credentials.co2_emissions_api}")
      .post("https://www.carboninterface.com/api/v1/estimates", :json => { type: "electricity", electricity_value: 5000, "country": "US" })

    render json: co2_emission.parse(:json)
  end
end

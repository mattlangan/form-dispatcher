# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    if Rails.env.development?
      origins 'http://localhost:3001'
    elsif Rails.env.production?
      origins 'austintexas.gov', 'http://alpha.austin.gov', 'https://coa-test-form-client.herokuapp.com', 'https://staging.austinconventioncenter', 'https://www.austinconventioncenter', 'https://staging.palmereventscenter.com', 'https://www.palmereventscenter.com',
    end
    resource '*',
      headers: :any,
      methods: [:get, :post]
  end
end

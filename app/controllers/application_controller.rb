class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :verify_authenticity_token, only: [:destroy_user_session]

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end

class SessionsController < ApplicationController

  def create

    url = "https://login.zype.com/oauth/token"
    response = RestClient.post(url, {
                    :client_id => Rails.application.secrets.client_id,
                    :client_secret => Rails.application.secrets.client_secret,
                    :username => params[:user],
                    :password => params[:password],
                    :grant_type => "password"})

    response = JSON.parse(response)

    if(response['access_token'])
      session[:remember_token] = response['access_token']
    end
    redirect_back fallback_location: videos_url
  end
end

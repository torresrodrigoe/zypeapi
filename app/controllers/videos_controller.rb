class VideosController < ApplicationController

  def index
    @page = params[:page].to_i || 1
    url = "https://api.zype.com/videos?app_key=#{Rails.application.secrets.appkey}&page=#{@page}&per_page=12"
    response = RestClient.get(url)
    @videos = JSON.parse(response)
  end

  def show
    @token = session[:remember_token] || nil
    url = "https://api.zype.com/videos?app_key=#{Rails.application.secrets.appkey}&id=#{params[:id]}"
    response = RestClient.get(url)
    @videodetail = JSON.parse(response)
    @videodetail = @videodetail['response'][0]
  end
end

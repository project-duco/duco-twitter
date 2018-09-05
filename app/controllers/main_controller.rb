class MainController < ApplicationController

  def landing
  end

  def get_25_tweets_by_user
    @username = params[:username]
    @tweets = []

    begin
      DucoTwitter::Application::CLIENT.user_timeline(@username, result_type: "recent").take(25).each do |tweet|
        @tweets << tweet
      end
    rescue StandardError => e
      puts "#{e.class} happened and said '#{e.message}' "
    end

    respond_to do |format|
      format.js
    end

  end

end

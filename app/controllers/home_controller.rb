class HomeController < ApplicationController

  def index
    if cookies[:_ga].blank?
      random_id = (0...9).map { ('0'..'9').to_a[rand(10)] }.join
      timestamp = (Time.new().to_i*1000).to_s
      cookies[:_ga] = {
        value: '1.2.' + random_id + '.' + timestamp,
        expires: 2.year.from_now,
        domain: 'proxyamp-thiagolcmelo.c9users.io'
      }
    end
  end

end
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :browser
  require "browser"


  private
  def browser
    browser = Browser.new(request.env['HTTP_USER_AGENT'], accept_language: "en-us")
    @remote_ip = request.remote_ip
    unless BrouseUser.where(ip: @remote_ip).present?
      BrouseUser.browse_names.each do |y|
        if browser.name == y[0].to_s
          BrouseUser.create(browse_name:y[1], ip:@remote_ip)
        end
      end
    end
    @br_count = BrouseUser
  end
end

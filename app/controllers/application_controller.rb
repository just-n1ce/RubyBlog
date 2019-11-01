class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :browser
  require "browser"

  private

  def browser
    browser = Browser.new(request.env['HTTP_USER_AGENT'], accept_language: "en-us")
    @remote_ip = request.remote_ip
    @other = 0
    BrouseUser.browse_names.each do |y| unless BrouseUser.where(ip: @remote_ip).present?
      if browser.name == y[0].to_s
        @other += 1
        BrouseUser.create(browse_name: y[1], ip: @remote_ip)
      end
      BrouseUser.create(browse_name: 4, ip: @remote_ip) if @other == 0
      end
    end
    @br_count = BrouseUser
  end
end

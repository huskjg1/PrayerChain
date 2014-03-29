class StaticPagesController < ApplicationController
  def home
    @prayer_request = current_user.prayer_requests.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end

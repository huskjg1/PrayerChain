class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @prayer_request  = current_user.prayer_requests.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end

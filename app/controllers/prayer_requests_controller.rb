class PrayerRequestsController < ApplicationController
  before_action :signed_in_user

  def create
    @prayer_request = current_user.prayer_requests.build(prayer_request_params)
    if @prayer_request.save
      flash[:success] = "Prayer Request made!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def prayer_request_params
      params.require(:prayer_request).permit(:content)
    end
end

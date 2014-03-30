class PrayerRequestsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    @prayer_request = current_user.prayer_requests.build(prayer_request_params)
    if @prayer_request.save
      flash[:success] = "Prayer Request made!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @prayer_request.destroy
    redirect_to root_url
  end

  private

    def prayer_request_params
      params.require(:prayer_request).permit(:content)
    end

    def correct_user
      @prayer_request = current_user.prayer_requests.find_by(id: params[:id])
      redirect_to root_url if @prayer_request.nil?
    end
end

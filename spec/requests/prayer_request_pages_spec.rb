require 'spec_helper'

describe "Prayer Request pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "prayer request creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a prayer request" do
        expect { click_button "Post" }.not_to change(PrayerRequest, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before { fill_in 'prayer_request_content', with: "Lorem ipsum" }
      it "should create a prayer request" do
        expect { click_button "Post" }.to change(PrayerRequest, :count).by(1)
      end
    end
  end
end

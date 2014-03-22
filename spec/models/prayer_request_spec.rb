require 'spec_helper'

describe PrayerRequest do
  let(:user) { FactoryGirl.create(:user) }
	before { @prayer_request = user.prayer_requests.build(content: "Lorem ipsum") }

  subject { @prayer_request }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }
  
  describe "when user_id is not present" do
  	before { @prayer_request.user_id = nil }
  	it { should_not be_valid }
  end
end

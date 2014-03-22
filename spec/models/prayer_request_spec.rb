require 'spec_helper'

describe PrayerRequest do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @prayer_request = PrayerRequest.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @prayer_request }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
end

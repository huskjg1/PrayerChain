require 'spec_helper'

describe "StaticPages" do
  let(:title) {"PrayerChain"}
  subject {page}

  describe "home" do
    before { visit root_path }

    it { should have_content('Home') }
    it { should have_title(title) }
    it { should_not have_title('| Home') }
  end

  describe "help" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(title + " | Help") }
  end

  describe "about" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(title + " | About") }
  end

  describe "contact" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(title + " | Contact") }
  end
end

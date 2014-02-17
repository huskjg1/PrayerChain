require 'spec_helper'

describe "StaticPages" do
  describe "home" do
    it "should have a header of Home" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("PrayerChain | Home")
    end
  end

  describe "help" do
    it "should have a header of Help" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("PrayerChain | Help")
    end
  end

  describe "about" do
    it "should have a header of About" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("PrayerChain | About")
    end
  end
end

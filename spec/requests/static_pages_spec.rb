require 'spec_helper'

# Integration testing on page content
describe 'StaticPages' do

  describe 'Home Page' do
    # A behaviour test to check whether h1 content is displayed as expected
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    # A behaviour test to check if the dynamically created title matches what is expected
    it "should have the base title only" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    # A behaviour test to check that the home page does not have a added page_title
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text=>"| Home")
    end
  end



  describe 'Help Page' do
    # A behaviour test to check whether h1 content is displayed as expected
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    # A behaviour test to check if the dynamically created title matches what is expected
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end



  describe 'About Page' do
    # A behaviour test to check whether h1 content is displayed as expected
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    # A behaviour test to check if the dynamically created title matches what is expected
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end


  describe 'Contact Page' do
    # A behaviour test to check whether h1 content is displayed as expected
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    # A behaviour test to check if the dynamically created title matches what is expected
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact")
    end

  end
end

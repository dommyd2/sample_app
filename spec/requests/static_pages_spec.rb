require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	
    it "should have the the h1 'Sample App'" do    
      visit '/static_pages/home'
      response.should have_selector('h1', 
      :content => 'Sample App')
    end
    
     it "should have the title 'Home'" do    
      visit '/static_pages/home'
      response.should have_selector('title',
       :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end
  
  describe "Help page" do
  	
    it "should have the h1 'Help'" do    
      visit '/static_pages/help'
      response.should have_selector('h1',
      :content => 'Help')
    end
    it "should have the title 'Help'" do    
      visit '/static_pages/help'
       response.should have_selector('title',
       :content => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  describe "About page" do
  	
    it "should have the h1 'About Us'" do    
      visit '/static_pages/about'
     response.should have_selector('h1',:content => 'About Us')
    end
    it "should have the title 'About Us'" do    
      visit '/static_pages/about'
       response.should have_selector('title',:content => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end

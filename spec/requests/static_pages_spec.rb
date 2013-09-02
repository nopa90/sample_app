require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home page" do
    before { visit root_path } 
    
    it { should have_content('Sample App') }
    it { should have_title("#{base_title}") }
    it { should_not have_title('| Home')}
     
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title("Help")) }
  
  end

  describe "About page" do
    before { visit about_path }
    
    it { should have_content('About Us') }
    it {should have_title(full_title("About Us"))}
  end
  
  describe "Contact page" do
    it "should have the content 'contact page'" do
      visit contact_path
      expect(page).to have_content('contact page')
    end
    
    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end

  end

end

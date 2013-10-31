require 'spec_helper'

describe "Static pages" do
  subject { page }
  let(:title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before(:each) { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(title) }
    it { should_not have_title(" | Home") }
  end

  describe "Help page" do
    before(:each) { visit help_path }

    it { should have_content('Help') }
    it { should have_title("#{title} | Help") }
  end

  describe "About page" do
    before(:each) { visit about_path }

    it { should have_content('About Us') }
    it { should have_title("#{title} | About Us") }
  end

  describe "Contact page" do
    before(:each) { visit contact_path }

    it { should have_content('Contact Us') }
    it { should have_title("#{title} | Contact Us") }
  end
end

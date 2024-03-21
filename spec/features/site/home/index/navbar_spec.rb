require 'rails_helper'
require 'capybara/rspec'


RSpec.feature "site/home/index.htmlerb", type: :feature do

 

  context "have_content" do

    before do
      @store = create(:store, name: 'rubby coffee')
      visit root_path
    end

    scenario 'name store' do 
      expect(page).to have_selector('h1', text: @store.name)
    end

    scenario 'menus navbar' do
      expect(page).to have_selector('a', text: 'home')
    end


  end


  context "navigating" do

    before do
      @store = create(:store, name: 'rubby coffee')
      visit root_path
    end

    scenario 'click link home' do
      click_link("link_home")
      expect(page).to have_current_path(root_path)
    end
  end


end
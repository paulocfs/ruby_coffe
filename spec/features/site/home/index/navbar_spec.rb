require 'rails_helper'
require 'capybara/rspec'


RSpec.feature "site/home/index.htmlerb", type: :feature do

  let(:store) { create(:store, name: 'rubby coffe') }

  context "partial navbar have_content" do

    scenario 'name store' do 
      store = create(:store, name: 'rubby coffee')
      visit root_path
      expect(page).to have_selector('h1', text: store.name)
    end
  end


end
require 'rails_helper'

RSpec.describe 'HomeController', type: :request do
  
  let(:store) { create(:store) }

  context 'index' do
    
    before { @store = store }

    describe 'render_template' do
      it {  
        get root_path
        should render_template('index') 
      }
    end

    describe 'have_rendered' do
      it { 
        get root_path
        expect(response).to have_rendered(layout: 'application')
      }
    end

    describe 'respond_with' do
      it { 
        get root_path
        should respond_with(200) 
      }
    end
  
  end
  
end

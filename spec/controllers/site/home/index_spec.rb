require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  
  context 'index' do
    
    before { get :index }

    describe 'render_template' do
      it { should render_template('index') }
    end

    describe 'have_rendered' do
      it { should render_with_layout('application') }
    end

    describe 'respond_with' do
      it { should respond_with(200) } 
    end
  
  end
  
end

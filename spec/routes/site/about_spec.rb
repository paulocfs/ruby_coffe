require 'rails_helper'

describe 'Routing', type: :routing do




  context "about" do

    it {route(:get, about_index_path).to(controller: :about, action: :index)}
  end
  

end
require 'rails_helper'

describe 'Routing', type: :routing do


  context "products" do

    it {route(:get, products_path).to(controller: :products, action: :index)}
  end
  

end
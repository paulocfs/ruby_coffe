require 'rails_helper'

describe 'Routing', type: :routing do


  context "reservations" do

    it {route(:get, reservations_path).to(controller: :reservations, action: :index)}
  end
  

end
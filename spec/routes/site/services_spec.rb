require 'rails_helper'

describe 'Routing', type: :routing do

  


  context "services" do

    it {route(:get, services_path).to(controller: :services, action: :index)}
  end
  

end
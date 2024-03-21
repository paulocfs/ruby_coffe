require 'rails_helper'

describe 'Routing', type: :routing do

  # root
  it {route(:get, '/').to(controller: :home, action: :index)}


  context "site/services" do

    it {route(:get, '/services').to(controller: :services, action: :index)}
  end
  

end
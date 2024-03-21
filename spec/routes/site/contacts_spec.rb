require 'rails_helper'

describe 'Routing', type: :routing do


  context "contacts" do

    it {route(:get, contacts_path).to(controller: :contacts, action: :index)}
  end
  

end
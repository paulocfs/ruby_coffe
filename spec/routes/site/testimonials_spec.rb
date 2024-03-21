require 'rails_helper'

describe 'Routing', type: :routing do

  context "testimonials" do
    it {route(:get, testimonials_path).to(controller: :testimonials, action: :index)}
  end
  

end
require 'rails_helper'

describe 'Routing', type: :routing do

 
  it {route(:get, '/').to(controller: :home, action: :index)}

end
require 'rails_helper'

describe 'Routing', type: :routing do

  # root
  it {route(:get, '/').to(controller: :home, action: :index)}

end
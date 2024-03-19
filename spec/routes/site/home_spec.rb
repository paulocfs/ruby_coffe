require 'rails_helper'

describe 'Routing', type: :routing do

  route(:get, '/').to(controller: :home, action: :index)

end
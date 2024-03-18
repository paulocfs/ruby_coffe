class HomeController < ApplicationController

  def index 

    @store = Store.first

  end




end

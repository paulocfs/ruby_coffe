class HomeController < ApplicationController

  def index 

    @store = Store.first
    @store_emails = StoreEmail.all

  end




end

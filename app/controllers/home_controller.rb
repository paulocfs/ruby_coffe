class HomeController < ApplicationController

  def index 

    @store = Store.first
    @store_emails = StoreEmail.all
    @store_phones = StorePhone.all
    @store_adresses = StoreAdress.all

  end




end

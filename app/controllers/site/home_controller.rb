module Site
  class HomeController < SiteController

 

  def index 

    @store = Store.first
    @store_emails = StoreEmail.all
    @store_phones = StorePhone.all
    @store_addresses = StoreAddress.where(active: true, deleted_at: nil)

  end

  




  end
end

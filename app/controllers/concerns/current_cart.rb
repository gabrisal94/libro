module CurrentCart extend ActiveSupport::Concern
  private

  #Questo metodo cerca la sessione corrente del carrello, se non esiste ne crea uno
  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create session[:cart_id]
  end
end

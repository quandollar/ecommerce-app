# Rails concern allows us to share codes in this module among controllers
# this method helps us persist the shopping cart in a session
module CurrentCart

    private

    def set_cart
        # get the cart_id from the session object and then find a cart corresponding to this ID
        @cart = Cart.find(session[:cart_id])
    
    # if ID not found, create a cart object and then store that cart's id into the session object
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
    end

end
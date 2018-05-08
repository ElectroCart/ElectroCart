class Seller::HomesController < ApplicationController
  def index
    if seller_signed_in?
      if current_seller.approve == false
        redirect_to edit_seller_registration_path
      else
      end
    end
  end
end

class HomesController < ApplicationController
  def index
  end

  def category
  	  render 'category'
  end

  def product_detail
  	 render 'product_detail'
  end

  def about_us
     render 'about_us'
  end

  def contact_us
     render 'contact_us'
  end
end

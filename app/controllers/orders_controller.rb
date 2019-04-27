
class OrdersController < ApplicationController
 end

class OrdersController < ApplicationController
  def index
    @orders = Orders.includes(:product).all
  end

  def Show
    @orders = Orders.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end

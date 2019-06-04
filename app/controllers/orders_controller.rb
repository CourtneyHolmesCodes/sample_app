
class OrdersController < ApplicationController
  before_action :authenticate_user!
   load_and_authorize_resource

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

class OrdersController < ApplicationController
  
  def new
    @food_item_id = params[:food_item_id] 
    @food_item = FoodItem.find(@food_item_id)
    render 'checkout'
  end

  def create
    @food_item_id = params[:food_item_id]
    @food_item = FoodItem.find(@food_item_id)
    @order = Order.create(:name => params[:customer_name], :phone => params[:phone_number], :address => params[:address])
    render 'thanks'
  end


end

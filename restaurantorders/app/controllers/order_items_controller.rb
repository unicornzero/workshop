class OrderItemsController < ApplicationController


  def index
    @order_items = OrderItem.all
  end


  def show
    @order_item = OrderItem.find(params[:id])
  end


  def new
    @order_item = OrderItem.new
 end


  def edit
    @order_item = OrderItem.find(params[:id])
  end


  def create
    @order_item = OrderItem.new(params[:order_item])

    if @order_item.save
      @order = Order.find(@order_item.order_id)
#      @order.set_total
      redirect_to order_path(@order), notice: 'Order item was successfully created.' 
    else
      render orders_path
    end
  end


  def update
    @order_item = OrderItem.find(params[:id])

    if @order_item.update_attributes(params[:order_item])
      redirect_to @order_item, notice: 'Order item was successfully updated.'
    else
      render action: "edit"
    end
  end


  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    redirect_to order_items_url
  end

end

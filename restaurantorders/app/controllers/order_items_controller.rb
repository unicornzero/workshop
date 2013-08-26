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
        redirect_to orders_path, notice: 'Order item was successfully created.' 
      else
        render orders_path
      end
    end
  end


  def update
    @order_item = OrderItem.find(params[:id])

    respond_to do |format|
      if @order_item.update_attributes(params[:order_item])
        format.html { redirect_to @order_item, notice: 'Order item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_item.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    respond_to do |format|
      format.html { redirect_to order_items_url }
      format.json { head :no_content }
    end
  end
end

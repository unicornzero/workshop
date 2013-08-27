class OrdersController < ApplicationController

  def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end


  def show
    @order = Order.find(params[:id])
    if @order.order_items.any?
      @order_items = @order.order_items
    end

  end



  def new
    @order = Order.new
    all_tables = DiningTable.all
    @dtables = DiningTable.all.each_with_object([]) do |d, a|
      a << [d.id, d.id]
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end


  def edit
    @order = Order.find(params[:id])
  end



  def create
    @order = Order.new(params[:order])

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end



  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(params[:order])
      redirect_to @order, notice: 'Order was successfully updated.' 
    else
      render action: "edit" 
    end
  end



  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  def payit
    @order = Order.find(params[:id])
    @order.update_attribute(:status, "Paid")
    redirect_to @order
  end


end

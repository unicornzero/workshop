class DiningTablesController < ApplicationController
  # GET /dining_tables
  # GET /dining_tables.json
  def index
    @dining_tables = DiningTable.all

    @orders = Order.all
  end

  # GET /dining_tables/1
  # GET /dining_tables/1.json
  def show
    @dining_table = DiningTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dining_table }
    end
  end

  # GET /dining_tables/new
  # GET /dining_tables/new.json
  def new
    @dining_table = DiningTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dining_table }
    end
  end

  # GET /dining_tables/1/edit
  def edit
    @dining_table = DiningTable.find(params[:id])
  end

  # POST /dining_tables
  # POST /dining_tables.json
  def create
    @dining_table = DiningTable.new(params[:dining_table])

    respond_to do |format|
      if @dining_table.save
        format.html { redirect_to dining_tables_path, notice: 'Dining table was successfully created.' }
        format.json { render json: @dining_table, status: :created, location: @dining_table }
      else
        format.html { render action: "new" }
        format.json { render json: @dining_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dining_tables/1
  # PUT /dining_tables/1.json
  def update
    @dining_table = DiningTable.find(params[:id])

    respond_to do |format|
      if @dining_table.update_attributes(params[:dining_table])
        format.html { redirect_to dining_tables_path, notice: 'Dining table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dining_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dining_tables/1
  # DELETE /dining_tables/1.json
  def destroy
    @dining_table = DiningTable.find(params[:id])
    @dining_table.destroy

    respond_to do |format|
      format.html { redirect_to dining_tables_url }
      format.json { head :no_content }
    end
  end


  def opener
    @dining_table = DiningTable.find(params[:id])
    if @dining_table.status == "Full"
      @dining_table.update_attribute(:status, "Open")
    else
      @dining_table.update_attribute(:status, "Full")
    end
    redirect_to dining_tables_path
  end

end

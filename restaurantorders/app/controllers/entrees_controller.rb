class EntreesController < ApplicationController
  # GET /entrees
  # GET /entrees.json
  def index
    @entrees = Entree.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entrees }
    end
  end

  # GET /entrees/1
  # GET /entrees/1.json
  def show
    @entree = Entree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entree }
    end
  end

  # GET /entrees/new
  # GET /entrees/new.json
  def new
    @entree = Entree.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entree }
    end
  end

  # GET /entrees/1/edit
  def edit
    @entree = Entree.find(params[:id])
  end

  # POST /entrees
  # POST /entrees.json
  def create
    @entree = Entree.new(params[:entree])

    respond_to do |format|
      if @entree.save
        format.html { redirect_to @entree, notice: 'Entree was successfully created.' }
        format.json { render json: @entree, status: :created, location: @entree }
      else
        format.html { render action: "new" }
        format.json { render json: @entree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entrees/1
  # PUT /entrees/1.json
  def update
    @entree = Entree.find(params[:id])

    respond_to do |format|
      if @entree.update_attributes(params[:entree])
        format.html { redirect_to @entree, notice: 'Entree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrees/1
  # DELETE /entrees/1.json
  def destroy
    @entree = Entree.find(params[:id])
    @entree.destroy

    respond_to do |format|
      format.html { redirect_to entrees_url }
      format.json { head :no_content }
    end
  end
end

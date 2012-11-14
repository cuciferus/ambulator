class BrandNamesController < ApplicationController
  # GET /brand_names
  # GET /brand_names.json
  def index
    @brand_names = BrandName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brand_names }
    end
  end

  # GET /brand_names/1
  # GET /brand_names/1.json
  def show
    @brand_name = BrandName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brand_name }
    end
  end

  # GET /brand_names/new
  # GET /brand_names/new.json
  def new
    @brand_name = BrandName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brand_name }
    end
  end

  # GET /brand_names/1/edit
  def edit
    @brand_name = BrandName.find(params[:id])
  end

  # POST /brand_names
  # POST /brand_names.json
  def create
    @brand_name = BrandName.new(params[:brand_name])

    respond_to do |format|
      if @brand_name.save
        format.html { redirect_to @brand_name, notice: 'Brand name was successfully created.' }
        format.json { render json: @brand_name, status: :created, location: @brand_name }
      else
        format.html { render action: "new" }
        format.json { render json: @brand_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brand_names/1
  # PUT /brand_names/1.json
  def update
    @brand_name = BrandName.find(params[:id])

    respond_to do |format|
      if @brand_name.update_attributes(params[:brand_name])
        format.html { redirect_to @brand_name, notice: 'Brand name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brand_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_names/1
  # DELETE /brand_names/1.json
  def destroy
    @brand_name = BrandName.find(params[:id])
    @brand_name.destroy

    respond_to do |format|
      format.html { redirect_to brand_names_url }
      format.json { head :no_content }
    end
  end
end

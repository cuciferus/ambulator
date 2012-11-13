class DrugComercialsController < ApplicationController
  # GET /drug_comercials
  # GET /drug_comercials.json
  def index
    @drug_comercials = DrugComercial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drug_comercials }
    end
  end

  # GET /drug_comercials/1
  # GET /drug_comercials/1.json
  def show
    @drug_comercial = DrugComercial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drug_comercial }
    end
  end

  # GET /drug_comercials/new
  # GET /drug_comercials/new.json
  def new
    @drug_comercial = DrugComercial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drug_comercial }
    end
  end

  # GET /drug_comercials/1/edit
  def edit
    @drug_comercial = DrugComercial.find(params[:id])
  end

  # POST /drug_comercials
  # POST /drug_comercials.json
  def create
    @drug_comercial = DrugComercial.new(params[:drug_comercial])

    respond_to do |format|
      if @drug_comercial.save
        format.html { redirect_to @drug_comercial, notice: 'Drug comercial was successfully created.' }
        format.json { render json: @drug_comercial, status: :created, location: @drug_comercial }
      else
        format.html { render action: "new" }
        format.json { render json: @drug_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drug_comercials/1
  # PUT /drug_comercials/1.json
  def update
    @drug_comercial = DrugComercial.find(params[:id])

    respond_to do |format|
      if @drug_comercial.update_attributes(params[:drug_comercial])
        format.html { redirect_to @drug_comercial, notice: 'Drug comercial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drug_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drug_comercials/1
  # DELETE /drug_comercials/1.json
  def destroy
    @drug_comercial = DrugComercial.find(params[:id])
    @drug_comercial.destroy

    respond_to do |format|
      format.html { redirect_to drug_comercials_url }
      format.json { head :no_content }
    end
  end
end

class DrugConcentrationsController < ApplicationController
  # GET /drug_concentrations
  # GET /drug_concentrations.json
  def index
    @drug_concentrations = DrugConcentration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drug_concentrations }
    end
  end

  # GET /drug_concentrations/1
  # GET /drug_concentrations/1.json
  def show
    @drug_concentration = DrugConcentration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drug_concentration }
    end
  end

  # GET /drug_concentrations/new
  # GET /drug_concentrations/new.json
  def new
    @drug_concentration = DrugConcentration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drug_concentration }
    end
  end

  # GET /drug_concentrations/1/edit
  def edit
    @drug_concentration = DrugConcentration.find(params[:id])
  end

  # POST /drug_concentrations
  # POST /drug_concentrations.json
  def create
    @drug_concentration = DrugConcentration.new(params[:drug_concentration])

    respond_to do |format|
      if @drug_concentration.save
        format.html { redirect_to @drug_concentration, notice: 'Drug concentration was successfully created.' }
        format.json { render json: @drug_concentration, status: :created, location: @drug_concentration }
      else
        format.html { render action: "new" }
        format.json { render json: @drug_concentration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drug_concentrations/1
  # PUT /drug_concentrations/1.json
  def update
    @drug_concentration = DrugConcentration.find(params[:id])

    respond_to do |format|
      if @drug_concentration.update_attributes(params[:drug_concentration])
        format.html { redirect_to @drug_concentration, notice: 'Drug concentration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drug_concentration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drug_concentrations/1
  # DELETE /drug_concentrations/1.json
  def destroy
    @drug_concentration = DrugConcentration.find(params[:id])
    @drug_concentration.destroy

    respond_to do |format|
      format.html { redirect_to drug_concentrations_url }
      format.json { head :no_content }
    end
  end
end

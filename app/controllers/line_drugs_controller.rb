class LineDrugsController < ApplicationController
  # GET /line_drugs
  # GET /line_drugs.json
  def index
    @line_drugs = LineDrug.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @line_drugs }
    end
  end

  # GET /line_drugs/1
  # GET /line_drugs/1.json
  def show
    @line_drug = LineDrug.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @line_drug }
    end
  end

  # GET /line_drugs/new
  # GET /line_drugs/new.json
  def new
    @line_drug = LineDrug.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @line_drug }
    end
  end

  # GET /line_drugs/1/edit
  def edit
    @line_drug = LineDrug.find(params[:id])
  end

  # POST /line_drugs
  # POST /line_drugs.json
  def create
    @line_drug = LineDrug.new(params[:line_drug])

    respond_to do |format|
      if @line_drug.save
        format.html { redirect_to @line_drug, notice: 'Line drug was successfully created.' }
        format.json { render json: @line_drug, status: :created, location: @line_drug }
      else
        format.html { render action: "new" }
        format.json { render json: @line_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /line_drugs/1
  # PUT /line_drugs/1.json
  def update
    @line_drug = LineDrug.find(params[:id])

    respond_to do |format|
      if @line_drug.update_attributes(params[:line_drug])
        format.html { redirect_to @line_drug, notice: 'Line drug was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @line_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_drugs/1
  # DELETE /line_drugs/1.json
  def destroy
    @line_drug = LineDrug.find(params[:id])
    @line_drug.destroy

    respond_to do |format|
      format.html { redirect_to line_drugs_url }
      format.json { head :no_content }
    end
  end
end

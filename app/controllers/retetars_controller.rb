class RetetarsController < ApplicationController
  respond_to :html, :js, :json
  # GET /retetars
  # GET /retetars.json
  def index
    @retetars = Retetar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @retetars }
    end
  end

  # GET /retetars/1
  # GET /retetars/1.json
  def show
    @retetar = Retetar.find(params[:id])

    respond_to do |format|
      format.js
      format.html # show.html.erb
      format.json { render json: @retetar.to_json(:include => [:medic]) , content_type: 'text/json'}
    end
  end

  # GET /retetars/new
  # GET /retetars/new.json
  def new
    @retetar = Retetar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @retetar }
    end
  end

  # GET /retetars/1/edit
  def edit
    @retetar = Retetar.find(params[:id])
  end

  # POST /retetars
  # POST /retetars.json
  def create
    @retetar = Retetar.new(params[:retetar])

    respond_to do |format|
      if @retetar.save
        format.html { redirect_to @retetar, notice: 'Retetar was successfully created.' }
        format.json { render json: @retetar, status: :created, location: @retetar }
      else
        format.html { render action: "new" }
        format.json { render json: @retetar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /retetars/1
  # PUT /retetars/1.json
  def update
    @retetar = Retetar.find(params[:id])

    respond_to do |format|
      if @retetar.update_attributes(params[:retetar])
        format.html { redirect_to @retetar, notice: 'Retetar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @retetar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retetars/1
  # DELETE /retetars/1.json
  def destroy
    @retetar = Retetar.find(params[:id])
    @retetar.destroy

    respond_to do |format|
      format.html { redirect_to retetars_url }
      format.json { head :no_content }
    end
  end
end

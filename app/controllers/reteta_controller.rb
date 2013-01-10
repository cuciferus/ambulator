class RetetaController < ApplicationController
  respond_to :html, :js
  # GET /reteta
  # GET /reteta.json
  def index
    @pacient = Pacient.find(params[:pacient_id])
    @reteta = Retetum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reteta }
    end
  end

  # GET /reteta/1
  # GET /reteta/1.json
  def show
    @retetum = Retetum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @retetum }
    end
  end

  # GET /reteta/new
  # GET /reteta/new.json
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @retetum = Retetum.new
    medicamente = @retetum.drugs.build

    respond_to do |format|
      format.js 
      format.html # new.html.erb
      format.json { render json: @retetum }
    end
  end

  # GET /reteta/1/edit
  def edit
    @retetum = Retetum.find(params[:id])
  end

  # POST /reteta
  # POST /reteta.json
  def create
    @pacient = Pacient.find(params[:pacient_id])
    @retetum = @pacient.reteta.create(params[:retetum])

    respond_to do |format|
      if @retetum.save
        format.js
        format.html { redirect_to pacient_reteta_path(@pacient), notice: 'Retetum was successfully created.' }
        format.json { render json: @retetum, status: :created, location: @retetum }
      else
        format.js
        format.html { render action: "new" }
        format.json { render json: @retetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reteta/1
  # PUT /reteta/1.json
  def update
    @retetum = Retetum.find(params[:id])

    respond_to do |format|
      if @retetum.update_attributes(params[:retetum])
        format.html { redirect_to @retetum, notice: 'Retetum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @retetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reteta/1
  # DELETE /reteta/1.json
  def destroy
    @retetum = Retetum.find(params[:id])
    @retetum.destroy

    respond_to do |format|
      format.html { redirect_to reteta_url }
      format.json { head :no_content }
    end
  end
end

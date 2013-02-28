class IesiresController < ApplicationController
  respond_to :html, :js
  # GET /iesires
  # GET /iesires.json
  def index
    @pacient = Pacient.find(params[:pacient_id])
    @iesires = @pacient.iesire

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iesires }
    end
  end

  # GET /iesires/1
  # GET /iesires/1.json
  def show
    @iesire = Iesire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iesire }
    end
  end

  # GET /iesires/new
  # GET /iesires/new.json
  def new

    @pacient = Pacient.find(params[:pacient_id])
    @iesire = Iesire.new

    respond_to do |format|
      format.js
      format.html # new.html.erb
      format.json { render json: @iesire }
    end
  end

  # GET /iesires/1/edit
  def edit
    @iesire = Iesire.find(params[:id])
  end

  # POST /iesires
  # POST /iesires.json
  def create
    @pacient = Pacient.find(params[:pacient_id])
    @pacient.iesire.create(params[:iesire])

    respond_to do |format|
      if @iesire.save
        @pacient.update_attribute(:active, false)
        format.html { redirect_to @iesire, notice: 'Iesire was successfully created.' }
        format.json { render json: @iesire, status: :created, location: @iesire }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @iesire.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /iesires/1
  # PUT /iesires/1.json
  def update
    @iesire = Iesire.find(params[:id])

    respond_to do |format|
      if @iesire.update_attributes(params[:iesire])
        format.html { redirect_to @iesire, notice: 'Iesire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @iesire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iesires/1
  # DELETE /iesires/1.json
  def destroy
    @iesire = Iesire.find(params[:id])
    @iesire.destroy

    respond_to do |format|
      format.html { redirect_to iesires_url }
      format.json { head :no_content }
    end
  end
end

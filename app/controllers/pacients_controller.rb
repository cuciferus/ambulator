class PacientsController < ApplicationController
  # GET /pacients
  # GET /pacients.json
  def index
    @pacients = Pacient.search(params[:search])

    respond_to do |format|
      format.js
      format.html # index.html.erb
      format.json { render json: @pacients }
    end
  end

  # GET /pacients/1
  # GET /pacients/1.json
  def show
    @pacient = Pacient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js
      format.json { render json: @pacient }
    end
  end

  # GET /pacients/new
  # GET /pacients/new.json
  def new
    @pacient = Pacient.new

    respond_to do |format|
      format.js
      format.html # new.html.erb
      format.json { render json: @pacient }
    end
  end

  # GET /pacients/1/edit
  def edit
    @pacient = Pacient.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
  end

  # POST /pacients
  # POST /pacients.json
  def create
    @pacient = Pacient.new(params[:pacient])

    respond_to do |format|
      if @pacient.save
        format.html { redirect_to @pacient, notice: 'Pacient was successfully created.' }
        format.json { render json: @pacient, status: :created, location: @pacient }
      else
        format.html { render action: "new" }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pacients/1
  # PUT /pacients/1.json
  def update
    @pacient = Pacient.find(params[:id])

    respond_to do |format|
      if @pacient.update_attributes(params[:pacient])
        format.html { redirect_to @pacient, notice: 'Pacient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacients/1
  # DELETE /pacients/1.json
  def destroy
    @pacient = Pacient.find(params[:id])
    @pacient.destroy

    respond_to do |format|
      format.html { redirect_to pacients_url }
      format.json { head :no_content }
    end
  end
  def scoatere_evidenta
    @pacient = Pacient.find(params[:id])
    @pacient.evidenta = false
    respond_to do |format|
      format.js
    end
  end

end


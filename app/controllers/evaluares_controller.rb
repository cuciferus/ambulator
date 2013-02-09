class EvaluaresController < ApplicationController
  respond_to :html, :js

  def index
    @pacient = Pacient.find(params[:pacient_id])
    @evaluares = @pacient.evaluares

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /evaluares/1
  # GET /evaluares/1.json
  def show
    if params[:incomplet].present? #e doar o idee
      puts 'e incomplet'
    else
      puts 'e complet'
    end
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = @pacient.evaluares.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /evaluares/new
  # GET /evaluares/new.json
  def new
    @pacient = Pacient.includes(:evaluares => [:paraclinics]).find(params[:pacient_id])
    @evaluare = Evaluare.new
    respond_to do |format|
      format.js 
      format.html # new.html.erb
      format.json { render json: @evaluare }
    end
  end

  # GET /evaluares/1/edit
  def edit
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = Evaluare.find(params[:id])
  end

  # POST /evaluares
  # POST /evaluares.json
  def create
    @pacient = Pacient.find(params[:pacient_id])
    if params[:evaluare][:generator_magic] == '1'
      puts 'mda e magic'
      celMaiMareNumarDeAnuAsta = Evaluare.where(['data > ?',Data.today.at_beginning_of_year]).select(:nr_fo).map(&:nr_fo).max #si daca fo e non numar #si daca fo e non numar?
    else
      puts 'nu e magie'
    end
    params[:evaluare].delete :generator_magic 
    @evaluare = @pacient.evaluares.create(params[:evaluare])

    respond_to do |format|
      if @evaluare.save
        format.js
        format.html { redirect_to url_for([@pacient, @evaluare]), notice: 'Evaluare was successfully created.' }
        format.json { render json: @evaluare, status: :created, location: @evaluare }
      else
        format.js
        format.html { render action: "new" }
        format.json { render json: @evaluare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluares/1
  # PUT /evaluares/1.json
  def update
    @evaluare = Evaluare.find(params[:id])

    respond_to do |format|
      if @evaluare.update_attributes(params[:evaluare])
        format.html { redirect_to @evaluare, notice: 'Evaluare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluares/1
  # DELETE /evaluares/1.json
  def destroy
    @evaluare = Evaluare.find(params[:id])
    @evaluare.destroy

    respond_to do |format|
      format.html { redirect_to evaluares_url }
      format.json { head :no_content }
    end
  end
end


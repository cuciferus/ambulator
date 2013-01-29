class FelAnalizasController < ApplicationController
  respond_to :html, :js, :json
  def index
    @fel_analizas = FelAnaliza.search(params[:search])
  end

  def get_analize
    #id e numele setului
    if request.xhr?
      puts 'salut coffee'
    else
      puts 'ce plm?'
    end
    @seturi_analize = FelAnaliza.where(:set_grup=>params[:set])
    respond_to do |format|
      format.json{render json: @seturi_analize}
      format.js
    end
  end


  def show
    @fel_analiza = FelAnaliza.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js
      format.json { render json: @fel_analiza }
    end
  end

  def new
    @fel_analiza = FelAnaliza.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fel_analiza }
    end
  end



  def create
    @fel_analiza = FelAnaliza.new(params[:pacient])

    respond_to do |format|
      if @fel_analiza.save
        format.html { redirect_to @fel_analiza, notice: 'FelAnaliza was successfully created.' }
        format.json { render json: @fel_analiza, status: :created, location: @fel_analiza }
      else
        format.html { render action: "new" }
        format.json { render json: @fel_analiza.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @fel_analiza = FelAnaliza.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
  end
  def update
    @fel_analiza = FelAnaliza.find(params[:id])

    respond_to do |format|
      if @fel_analiza.update_attributes(params[:pacient])
        format.html { redirect_to @fel_analiza, notice: 'FelAnaliza was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fel_analiza.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fel_analiza = FelAnaliza.find(params[:id])
    @fel_analiza.destroy

    respond_to do |format|
      format.html { redirect_to pacients_url }
      format.json { head :no_content }
    end
  end

end

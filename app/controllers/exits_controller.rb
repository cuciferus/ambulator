class ExitsController < ApplicationController
  # GET /exits
  # GET /exits.json
  def index
    @exits = Exit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exits }
    end
  end

  # GET /exits/1
  # GET /exits/1.json
  def show
    @exit = Exit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exit }
    end
  end

  # GET /exits/new
  # GET /exits/new.json
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @exit = @pacient.build_exit

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exit }
    end
  end

  # GET /exits/1/edit
  def edit
    @exit = Exit.find(params[:id])
  end

  # POST /exits
  # POST /exits.json
  def create
    @pacient = Pacient.find(params[:pacient_id])
    @exit = @pacient.create_exit(params[:exit])

    respond_to do |format|
      if @exit.save
        @pacient.update_attribute(:evidenta, false)
        format.html { redirect_to pacients_path, notice: 'Pacientul a fost scos din evidenta' }
        format.json { render json: @pacients, status: :created, location: @exit }
      else
        format.html { render action: "new" }
        format.json { render json: @exit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exits/1
  # PUT /exits/1.json
  def update
    @exit = Exit.find(params[:id])

    respond_to do |format|
      if @exit.update_attributes(params[:exit])
        format.html { redirect_to @exit, notice: 'Exit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exits/1
  # DELETE /exits/1.json
  def destroy
    @exit = Exit.find(params[:id])
    @exit.destroy

    respond_to do |format|
      format.html { redirect_to exits_url }
      format.json { head :no_content }
    end
  end
end

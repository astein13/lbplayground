class FliersController < ApplicationController
  # GET /fliers
  # GET /fliers.json
  def index
    @fliers = Flier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fliers }
    end
  end

  # GET /fliers/1
  # GET /fliers/1.json
  def show
    @flier = Flier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flier }
    end
  end

  # GET /fliers/new
  # GET /fliers/new.json
  def new
    @flier = Flier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flier }
    end
  end

  # GET /fliers/1/edit
  def edit
    @flier = Flier.find(params[:id])
  end

  # POST /fliers
  # POST /fliers.json
  def create
    @flier = Flier.new(params[:flier])

    respond_to do |format|
      if @flier.save
        format.html { redirect_to @flier, notice: 'Flier was successfully created.' }
        format.json { render json: @flier, status: :created, location: @flier }
      else
        format.html { render action: "new" }
        format.json { render json: @flier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fliers/1
  # PUT /fliers/1.json
  def update
    @flier = Flier.find(params[:id])

    respond_to do |format|
      if @flier.update_attributes(params[:flier])
        format.html { redirect_to @flier, notice: 'Flier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fliers/1
  # DELETE /fliers/1.json
  def destroy
    @flier = Flier.find(params[:id])
    @flier.destroy

    respond_to do |format|
      format.html { redirect_to fliers_url }
      format.json { head :no_content }
    end
  end
end

class PackersController < ApplicationController
  
  http_basic_authenticate_with :name => "posadmin", :password => "W=rcopto", :except => [:index, :show]

	
  # GET /packers
  # GET /packers.json
  def index
    @packers = Packer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @packers }
    end
  end

  # GET /packers/1
  # GET /packers/1.json
  def show
    @packer = Packer.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @packer }
    end
  end

  # GET /packers/new
  # GET /packers/new.json
  def new
    @packer = Packer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @packer }
    end
  end

  # GET /packers/1/edit
  def edit
    @packer = Packer.find(params[:id])
  end

  # POST /packers
  # POST /packers.json
  def create
    @packer = Packer.new(params[:packer])

    respond_to do |format|
      if @packer.save
        format.html { redirect_to @packer, notice: 'Packer was successfully created.' }
        format.json { render json: @packer, status: :created, location: @packer }
      else
        format.html { render action: "new" }
        format.json { render json: @packer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /packers/1
  # PUT /packers/1.json
  def update
    @packer = Packer.find(params[:id])

    respond_to do |format|
      if @packer.update_attributes(params[:packer])
        format.html { redirect_to @packer, notice: 'Packer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @packer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packers/1
  # DELETE /packers/1.json
  def destroy
    @packer = Packer.find(params[:id])
    @packer.destroy

    respond_to do |format|
      format.html { redirect_to packers_url }
      format.json { head :no_content }
    end
  end
end

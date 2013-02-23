class RiggersController < ApplicationController

  http_basic_authenticate_with :name => "posadmin", :password => "W=rcopto", :except => [:index, :show]

  # GET /riggers
  # GET /riggers.json
  def index
    @riggers = Rigger.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @riggers }
    end
  end

  # GET /riggers/1
  # GET /riggers/1.json
  def show
    @rigger = Rigger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rigger }
    end
  end

  # GET /riggers/new
  # GET /riggers/new.json
  def new
    @rigger = Rigger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rigger }
    end
  end

  # GET /riggers/1/edit
  def edit
    @rigger = Rigger.find(params[:id])
  end

  # POST /riggers
  # POST /riggers.json
  def create
    @rigger = Rigger.new(params[:rigger])

    respond_to do |format|
      if @rigger.save
        format.html { redirect_to @rigger, notice: 'Rigger was successfully created.' }
        format.json { render json: @rigger, status: :created, location: @rigger }
      else
        format.html { render action: "new" }
        format.json { render json: @rigger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /riggers/1
  # PUT /riggers/1.json
  def update
    @rigger = Rigger.find(params[:id])

    respond_to do |format|
      if @rigger.update_attributes(params[:rigger])
        format.html { redirect_to @rigger, notice: 'Rigger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rigger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riggers/1
  # DELETE /riggers/1.json
  def destroy
    @rigger = Rigger.find(params[:id])
    @rigger.destroy

    respond_to do |format|
      format.html { redirect_to riggers_url }
      format.json { head :no_content }
    end
  end
end

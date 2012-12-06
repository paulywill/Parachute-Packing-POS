class RigsController < ApplicationController
  # GET /rigs
  # GET /rigs.json
  def index
    @rigs = Rig.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rigs }
    end
  end

  # GET /rigs/1
  # GET /rigs/1.json
  def show
    @rig = Rig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rig }
    end
  end

  # GET /rigs/new
  # GET /rigs/new.json
  def new
    @rig = Rig.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rig }
    end
  end

  # GET /rigs/1/edit
  def edit
    @rig = Rig.find(params[:id])
  end

  # POST /rigs
  # POST /rigs.json
  def create
    @rig = Rig.new(params[:rig])

    respond_to do |format|
      if @rig.save
        format.html { redirect_to @rig, notice: 'Rig was successfully created.' }
        format.json { render json: @rig, status: :created, location: @rig }
      else
        format.html { render action: "new" }
        format.json { render json: @rig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rigs/1
  # PUT /rigs/1.json
  def update
    @rig = Rig.find(params[:id])

    respond_to do |format|
      if @rig.update_attributes(params[:rig])
        format.html { redirect_to @rig, notice: 'Rig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rigs/1
  # DELETE /rigs/1.json
  def destroy
    @rig = Rig.find(params[:id])
    @rig.destroy

    respond_to do |format|
      format.html { redirect_to rigs_url }
      format.json { head :no_content }
    end
  end
end

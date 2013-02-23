class PackjobsController < ApplicationController

  http_basic_authenticate_with :name => "posadmin", :password => "W=rcopto", :except => [:index, :show, :new]

  # GET /packjobs
  # GET /packjobs.json
  def index
    @packjobs = Packjob.all
    @packers = Packer.find(:all)
    @rigs = Rig.find(:all, :order => "rig_type_number")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @packjobs }
    end
  end

  # GET /packjobs/1
  # GET /packjobs/1.json
  def show
    @packjob = Packjob.find(params[:id])
    @packers = Packer.find(:all)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @packjob }
    end
  end

  # GET /packjobs/new
  # GET /packjobs/new.json
  def new
    @packjob = Packjob.new
    @packers = Packer.find(:all, :conditions => { :p_team => "t" }, :order => "p_name")
    @rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @packjob }
    end
  end

  # GET /packjobs/1/edit
  def edit
    @packjob = Packjob.find(params[:id])
    @packers = Packer.find(:all, :conditions => { :p_team => "t" }, :order => "p_name")
    @rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")

  end

  # POST /packjobs
  # POST /packjobs.json
  def create
    @packjob = Packjob.new(params[:packjob])
    @packers = Packer.find(:all, :conditions => { :p_team => "t" }, :order => "p_name")
    @rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")
    
    respond_to do |format|
      if @packjob.save
        format.html { redirect_to @packjob, notice: 'Packjob was successfully created.' }
        format.json { render json: @packjob, status: :created, location: @packjob }
      else
        format.html { render action: "new" }
        format.json { render json: @packjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /packjobs/1
  # PUT /packjobs/1.json
  def update
    @packjob = Packjob.find(params[:id])
    @packers = Packer.find(:all, :conditions => { :p_team => "t" }, :order => "p_name")
    @rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")

    respond_to do |format|
      if @packjob.update_attributes(params[:packjob])
        format.html { redirect_to @packjob, notice: 'Packjob was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @packjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packjobs/1
  # DELETE /packjobs/1.json
  def destroy
    @packjob = Packjob.find(params[:id])
    @packjob.destroy

    respond_to do |format|
      format.html { redirect_to packjobs_url }
      format.json { head :no_content }
    end
  end
end

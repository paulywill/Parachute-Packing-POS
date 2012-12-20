class Damage < ActiveRecord::Base
  attr_accessible :dam_detail, :dam_reporter, :dam_rig, :packer_id, :rig_id

  validates :packer_id, :presence  => true
  validates :rig_id, :presence  => true  

  belongs_to :packer
  belongs_to :packjob
  belongs_to :rig

  before_save :set_dam_reporter
  before_save :set_dam_rig
   
  def set_dam_reporter
     self.dam_reporter = packer.try(:p_name)
  end	


  def set_dam_rig
     self.dam_rig = rig.try(:rig_type_number)
  end

end

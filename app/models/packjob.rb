class Packjob < ActiveRecord::Base
   attr_accessible :pj_damage, :pj_extranotes, :pj_guestpacker, :pj_packer, :pj_rig_type_number, :packer_id, :rig_id

   validates :packer_id, :presence  => true
   validates :rig_id, :presence  => true
   
   belongs_to :packer
   belongs_to :rig
   belongs_to :damage

   before_save :set_pj_packer
   before_save :set_pj_rig_type_number	

   
   def set_pj_packer
      self.pj_packer = packer.try(:p_name)
   end	


   def set_pj_rig_type_number
      self.pj_rig_type_number = rig.try(:rig_type_number)
   end
   

end

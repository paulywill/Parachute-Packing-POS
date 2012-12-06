class Packjob < ActiveRecord::Base
   attr_accessible :pj_damage, :pj_extranotes, :pj_guestpacker, :pj_packer, :pj_rig_type_number, :packer_id

   validates :packer_id, :presence  => true
   validates :pj_rig_type_number, :presence  => true
   
   belongs_to :packer

   before_save :set_pj_packer

   def set_pj_packer
      self.pj_packer = packer.try(:p_name)
   end	

   



end

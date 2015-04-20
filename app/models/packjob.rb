class Packjob < ActiveRecord::Base
    			        			  attr_accessible :pj_extranotes, :pj_guestpacker, :pj_packer, :pj_rig_type_number, :packer_id, :rig_id

   validates :packer_id, :presence  => true
   validates :rig_id, :presence  => true
   validate :check_timestamp

   belongs_to :packer
   belongs_to :rig

   before_save :set_pj_packer
   before_save :set_pj_rig_type_number

   def check_timestamp
      if (Packjob.last.created_at.localtime > 1.minute.ago.localtime) && ( Packjob.last.pj_packer == packer.try(:p_name) && Packjob.last.pj_rig_type_number == rig.try(:rig_type_number) )
         errors.add(:created_at, 'Possible Duplicate...please try again in a minute.')
      end
  end

   def set_pj_packer
      self.pj_packer = packer.try(:p_name)
   end


   def set_pj_rig_type_number
      self.pj_rig_type_number = rig.try(:rig_type_number)
   end




end

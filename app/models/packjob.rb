class Packjob < ActiveRecord::Base
   attr_accessible :pj_damage, :pj_extranotes, :pj_guestpacker, :pj_packer, :pj_rig_type_number

   validates :pj_packer, :presence  => true
   validates :pj_rig_type_number, :presence  => true
   
   belongs_to :packer
end

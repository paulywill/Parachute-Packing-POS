class Rig < ActiveRecord::Base
  attr_accessible :rig_jumpnum, :rig_main_last, :rig_main_who, :rig_res_due, :rig_res_last, :rig_res_who, :rig_status, :rig_type_number
  has_many :packjobs
end

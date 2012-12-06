class Packer < ActiveRecord::Base
  attr_accessible :p_cspa_date, :p_name, :p_team

  has_many :packjobs
end

class CreatePackjobs < ActiveRecord::Migration
  def change
    create_table :packjobs do |t|
      t.string :pj_packer
      t.string :pj_guestpacker
      t.string :pj_rig_type_number
      t.string :pj_damage
      t.string :pj_extranotes

      t.timestamps
    end
  end
end

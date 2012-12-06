class CreateRigs < ActiveRecord::Migration
  def change
    create_table :rigs do |t|
      t.boolean :rig_status
      t.string :rig_type_number
      t.integer :rig_jumpnum
      t.date :rig_res_last
      t.string :rig_res_who
      t.date :rig_res_due
      t.datetime :rig_main_last
      t.string :rig_main_who

      t.timestamps
    end
  end
end

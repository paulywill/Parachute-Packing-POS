class CreateDamages < ActiveRecord::Migration
  def change
    create_table :damages do |t|
      t.datetime :dam_dstamp
      t.string :dam_rig
      t.text :dam_detail
      t.string :dam_reporter

      t.timestamps
    end
  end
end

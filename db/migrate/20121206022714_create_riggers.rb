class CreateRiggers < ActiveRecord::Migration
  def change
    create_table :riggers do |t|
      t.string :rigger_name
      t.string :rigger_rating
      t.string :rigger_licnum

      t.timestamps
    end
  end
end

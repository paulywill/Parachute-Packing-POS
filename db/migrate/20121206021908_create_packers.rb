class CreatePackers < ActiveRecord::Migration
  def change
    create_table :packers do |t|
      t.string :p_name
      t.date :p_cspa_date
      t.boolean :p_team

      t.timestamps
    end
  end
end

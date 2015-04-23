# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121210181133) do

  create_table "damages", :force => true do |t|
    t.string   "dam_rig"
    t.text     "dam_detail"
    t.string   "dam_reporter"
    t.boolean  "dam_fixed"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "packer_id"
    t.integer  "rig_id"
  end

  create_table "packers", :force => true do |t|
    t.string   "p_name"
    t.date     "p_cspa_date"
    t.boolean  "p_team"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "packjobs", :force => true do |t|
    t.string   "pj_packer"
    t.string   "pj_guestpacker"
    t.string   "pj_rig_type_number"
    t.string   "pj_extranotes"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "packer_id"
    t.integer  "rig_id"
  end

  create_table "riggers", :force => true do |t|
    t.string   "rigger_name"
    t.string   "rigger_rating"
    t.string   "rigger_licnum"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "rigs", :force => true do |t|
    t.boolean  "rig_status"
    t.string   "rig_type_number"
    t.integer  "rig_jumpnum"
    t.date     "rig_res_last"
    t.string   "rig_res_who"
    t.date     "rig_res_due"
    t.datetime "rig_main_last"
    t.string   "rig_main_who"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end

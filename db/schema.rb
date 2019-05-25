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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190523104621) do

  create_table "bbis", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal "iduser", precision: 10
    t.decimal "bbi", precision: 10
    t.decimal "imt", precision: 10
    t.decimal "bmr", precision: 10
    t.decimal "fa", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal "iduser", precision: 10
    t.decimal "et", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal "iduser", precision: 10
    t.decimal "protein", precision: 10
    t.decimal "lemak", precision: 10
    t.decimal "kH", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal "tb", precision: 10
    t.decimal "bb", precision: 10
    t.decimal "jk", precision: 10
    t.decimal "umur", precision: 10
    t.decimal "fa", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

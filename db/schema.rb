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

ActiveRecord::Schema.define(version: 2024_04_12_085323) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "contact_no"
    t.string "address"
    t.string "city"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "feedback_type"
    t.integer "feedback_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
    t.index ["shop_id"], name: "index_customers_on_shop_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "feedbackable_type"
    t.integer "feedbackable_id"
    t.index ["customer_id"], name: "index_feedbacks_on_customer_id"
    t.index ["feedbackable_type", "feedbackable_id"], name: "index_feedbacks_on_feedbackable_type_and_feedbackable_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.integer "category_id"
    t.integer "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_items_on_category_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "item_id"
    t.integer "quantity"
    t.decimal "price"
    t.decimal "discount"
    t.decimal "tax"
    t.decimal "shipping_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_order_items_on_item_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "status"
    t.decimal "subtotal"
    t.decimal "item_discount"
    t.decimal "tax"
    t.decimal "total"
    t.decimal "grand_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
    t.string "feedback_type"
    t.integer "feedback_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "age"
    t.date "dob"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners_shops", id: false, force: :cascade do |t|
    t.integer "shop_id", null: false
    t.integer "owner_id", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.datetime "date"
    t.integer "order_id"
    t.string "status"
    t.string "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rateable_type"
    t.integer "rateable_id"
    t.integer "customer_id"
    t.integer "shop_id"
    t.integer "order_id"
    t.integer "owner_id"
    t.integer "item_id"
    t.index ["customer_id"], name: "index_ratings_on_customer_id"
    t.index ["item_id"], name: "index_ratings_on_item_id"
    t.index ["order_id"], name: "index_ratings_on_order_id"
    t.index ["owner_id"], name: "index_ratings_on_owner_id"
    t.index ["rateable_type", "rateable_id"], name: "index_ratings_on_rateable_type_and_rateable_id"
    t.index ["shop_id"], name: "index_ratings_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "phone_no"
    t.string "address"
    t.string "city"
    t.datetime "open_time"
    t.datetime "close_time"
    t.string "website"
    t.string "email"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_shops_on_owner_id"
  end

end

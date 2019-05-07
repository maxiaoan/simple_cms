class CreateUsers < ActiveRecord::Migration[5.2]

  def up
  	# create_table :users, :id=>false do |t|
    create_table :users do |t|

      t.column "first_name", :string , :limit => 20# long format
      t.string "last_name", :limit => 10 #short format
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      t.timestamps
      # t.datetime "create_at"
      # t.string "datetime_at"

    end
  end

  def down
  	drop_table :users
  end
end

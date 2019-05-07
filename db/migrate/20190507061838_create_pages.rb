class CreatePages < ActiveRecord::Migration[5.2]
  def up
    # create_table :pages do |t|
    # 	t.integer "subject_id"
    # 	t.string "name"
    # 	t.string "permalink"
    # 	t.integer "position"
    # 	t.boolean "visible", :default => false
    #     t.timestamps
    # end
    # add_index("pages", "subject_id")
    # add_index("pages", "permalink")
  end

 # don't need to drop indexes when dropping the whole tables
  def down 
  	drop_table :pages
  end

end

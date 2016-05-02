class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :content
      t.references :to_do_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

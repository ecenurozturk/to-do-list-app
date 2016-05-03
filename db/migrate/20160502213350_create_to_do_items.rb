class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :content
      t.references :to_do_list, index: true
      t.datetime :completed_at

      t.timestamps
    end
  end
end

class ToDoList < ActiveRecord::Base
  has_many :to_do_items
end

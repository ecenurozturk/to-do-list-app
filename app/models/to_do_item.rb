class ToDoItem < ActiveRecord::Base
  belongs_to :to_do_list

  def completed?
  	!completed_at.blank?
  end
end

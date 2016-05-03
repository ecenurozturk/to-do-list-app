class ToDoItemsController < ApplicationController
	before_action :set_to_do_list
	before_action :set_to_do_item, except: [:create]

	def create
		@to_do_item = @to_do_list.to_do_items.create(to_do_item_params)
		redirect_to @to_do_list
	end

	def destroy
		if @to_do_item.destroy
			flash[:success] = "sildim gitti"
		else
			flash[:error] = "silinmedi"
		end
		redirect_to @to_do_list
	end

	def complete
		@to_do_item.update_attribute(:completed_at, Time.now)
		redirect_to @to_do_list, notice: "Todo item completed"
	end

	private

	def set_to_do_list
		@to_do_list = ToDoList.find(params[:to_do_list_id])
	end

	def set_to_do_item
		@to_do_item = @to_do_list.to_do_items.find(params[:id])
	end

	def to_do_item_params
		params[:to_do_item].permit(:content)
	end

end

class Api::V1::ListItemsController < ApplicationController

    before_action :set_list

    def index
        @list_items = @list.list_items
        render json: @list_items
    end

    def create
        @list_item = ListItem.create(list_item_params)

        if @list_item.save
            render json: @list_item
        else
            render json: {error: "Error creating list item"}
        end
    end

    def show

    end

    def destroy

    end

    private

    def set_list
        @list = List.find(params[:list_id])
    end

    def list_item_params
        params.require(:list_item).permit(:description, :completed, :list_id)
    end

end

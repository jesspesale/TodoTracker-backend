class Api::V1::ListItemsController < ApplicationController

    before_action :set_list

    def index
        @list_items = ListItem.all
        render json: @list_items
    end

    def create

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

class API::V1::ListsController < ApplicationController

    def index
        @lists = List.all 
        render json: @lists
    end

    def create
        @list = List.create(list_params)

        if @list.save
            render json: @list
        else
            render json: {error: "Error creating the list"}
        end
    end

    def show

    end

    def destroy

    end

    private

    def list_params
        params.require(:list).permit(:title, :completed)
    end

end

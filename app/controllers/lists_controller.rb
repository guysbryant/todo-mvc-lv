class ListsController < ApplicationController

    def index 
        @list = List.new 
        @lists = List.all
        # raise @lists.inspect #was the controller able to get the lists from the db
        #implicit render of views/lists/index.html.erb
    end

    def show 
        @list = List.find(params[:id])
    end

    def create 
        @list = List.new
        @list.name = params[:list][:name]
        @list.save

        redirect_to @list
    end
end

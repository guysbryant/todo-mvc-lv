class ListsController < ApplicationController

    def index 
        @lists = List.all
        # raise @lists.inspect #was the controller able to get the lists from the db
        #implicit render of views/lists/index.html.erb
    end
end

class IndexController < ApplicationController
    layout 'index'
    def index
        
    end
    
    def show
        @genre = Genre.find(params[:id])
    end
end

class IndexController < ApplicationController
    layout 'index'
    def index
        @genres = Genre.all
    end
    
    def show
        @genres = Genre.all
        @genre = Genre.find(params[:id])
    end
end

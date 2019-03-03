class IndexController < ApplicationController
    layout 'index'
    def index
        @genres = Genre.all
    end
    
    def show
        @genres = Genre.all
        @genre = Genre.find(params[:id])
    end
    
    def download
        download_file_name = "public#{params[:id]}"
        send_file download_file_name
    end
end

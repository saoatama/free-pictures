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
        @picture = Picture.find(params[:id])
        download_file_name = "public#{@picture.url}"
        send_file download_file_name
        
        @picture.download += 1
        @picture.save
    end
end

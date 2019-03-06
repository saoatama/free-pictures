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
        ##@picture.download += 1
        ##@picture.save
        send_data(@picture.photo, type: 'image/jpeg', filename: @picture.name, disposition: 'attachment')
    end
    
    def read
        @picture = Picture.find(params[:id])
        send_data(@picture.photo)
    end
end

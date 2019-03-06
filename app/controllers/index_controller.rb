class IndexController < ApplicationController
    layout 'index'
    before_action :genre_all, only: [:index, :show, :contact]
    
    def index
    end
    
    def show
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
    
    def contact
    end
    
    private
    def genre_all
        @genres = Genre.all
    end
end

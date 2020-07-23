class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(params_method)
        if @artist.save
            redirect_to artist_path(@artist)
        else
            flash[:user_error] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end
    

    private
    
    def params_method
        params.require(:artist).permit(:name, :title, :age)
    end

end

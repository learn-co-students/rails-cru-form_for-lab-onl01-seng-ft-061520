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
        # Replaced with Strong Params
        # @artist = Artist.new(name: params[:artist][:name], bio: params[:artist][:bio])
        @artist = Artist.new(artist_params(:name, :bio))

        @artist.save
        
        redirect_to artist_url(@artist)
    end


    def edit
        @artist = Artist.find(params[:id])
    end

    # https://guides.rubyonrails.org/layouts_and_rendering.html#using-render
    def update
        # Specify which student to update 
        @artist = Artist.find(params[:id])

        if @artist.update(artist_params(:name, :bio))

            # redirect_to artist_url(@artist)
            redirect_to(@artist)
        else
            render "edit"
        end

    end





    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
  
end

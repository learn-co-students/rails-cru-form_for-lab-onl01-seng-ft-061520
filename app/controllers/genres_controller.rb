class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end


    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params(:name))

        @genre.save

        redirect_to genre_url(@genre)
    end


    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])

        if @genre.update(genre_params(:name))

            # Can also use:     redirect_to genre_url(@genre)
            redirect_to(@genre)
        else
            render :edit
        end
    end


    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end


end

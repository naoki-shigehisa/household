class Api::V1::GenresController < ApplicationController
    def index
        genres = Genre.all
        @all_genre_count = genres.count
        @genres = genres
        render json: { status: 'SUCCESS', all_genre_count:@all_genre_count , genres: @genres }
    end

    def show
        genre = Genre.find(params[:id])
        @genre = genre
        render json: { status: 'SUCCESS', genre: @genre }
    end
end
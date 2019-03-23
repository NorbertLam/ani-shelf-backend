class AnimesController < ApplicationController
    def index
        render json: Anime.all
    end
end

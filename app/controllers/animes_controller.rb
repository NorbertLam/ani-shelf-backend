class AnimesController < ApplicationController
    skip_before_action :authorized

    def index
        render json: Anime.all
    end
end

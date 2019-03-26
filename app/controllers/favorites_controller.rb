class FavoritesController < ApplicationController
    def create
        jwt = request.headers['Authorization']
        id = JWT.decode(jwt, "supersecrete")[0]["user_id"]
        user = User.find(id)
        @favorite = Favorite.create(user_id: id, anime_id: favorite_params["anime_id"])
    end

    def show
        jwt = request.headers['Authorization']
        id = JWT.decode(jwt, "supersecrete")[0]["user_id"]
        @animeArr = Favorite.select {|favorite| favorite["user_id"] == id}
        render json: {animes: @animeArr}, status: :accepted
    end

    private
    def favorite_params
        params.permit(:user, :anime_id)
    end
end
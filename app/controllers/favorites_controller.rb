class FavoritesController < ApplicationController
    def create
        jwt = request.headers['Authorization']
        id = JWT.decode(jwt, "supersecrete")[0]["user_id"]
        user = User.find(id)
        @favorite = Favorite.create(user_id: id, anime_id: favorite_params["anime_id"])
        render json: {favorite: @favorite}, status: :created
    end

    def show
        jwt = request.headers['Authorization']
        id = JWT.decode(jwt, "supersecrete")[0]["user_id"]
        @animeArr = Favorite.select {|favorite| favorite["user_id"] == id}
        render json: {animes: @animeArr}, status: :accepted
    end

    def destroy
        Favorite.find(params[:id]).destroy
    end

    private
    def favorite_params
        params.permit(:user, :anime_id)
    end
end
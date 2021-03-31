class FrontEndUsersController < ApplicationController
    def index
        @user = FrontEndUser.all
        render json: { Status:'success',message:'front end users list',data:@user},status: 200
    end
    #GET/user
    def show
        @user = FrontEndUser.find(params[:id])
        render json: { Status:'success',data:@user},status: 200
    end
end

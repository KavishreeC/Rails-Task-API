class Api::V1::UsersController < ApplicationController
    #GET/users
    def index
        @user = User.all
        render json: { Status:'success',message:'users list',data:@user},status: 200
    end
    #GET/user
    def show
        @user = User.find(params[:id])
        render json: { Status:'success',data:@user},status: 200
    end
    #POST/create user
    def create
        @user = User.new(user_params)
        if @user.save
            render json: {message:'user successfuly created',data:@user},status: 200
        else
            render json: {error:'unable to create user'},status: 400
        end
    end
    #PUT/update user
    def update
   
        @user = User.find(params[:id])
        if @user
            @user.update(user_params)
            render json: {message:'user successfuly updated',data:@user},status: 200
        else
            render json: {error:'unable to update user'},status: 400
        end

    end
    #DELETE/destroy user
    def destroy
        @user = User.find(params[:id])
        if @user
            @user.destroy
            render json: {message:'user successfuly deleted'},status: 200
        else
            render json: {error:'unable to delete user'},status: 400
        end
    end

    private
    def user_params
        params.permit(:username, :email, :phone)
    end

end
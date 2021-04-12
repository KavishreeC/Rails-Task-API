class SessionsController < ApplicationController
    def login
        @client = User.find_by(email: params[:email])
        if @client && @client.authenticate(params[:password])
          session[:user_id] = @client.id
        #   secret_key = Rails.application.secrets.secret_key_base[0]
        #   token = JWT.encode(client, secret_key)
        #   render json: token
        else
          flash[:notice] = "Login is invalid!"
        end
      end
  end
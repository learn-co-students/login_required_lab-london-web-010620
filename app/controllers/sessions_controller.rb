class SessionsController < ApplicationController
   
    def create
        if params[:name] && params[:name].length > 0
          session[:name] = params[:name]
          redirect_to secrets_show_path
        else
          redirect_to root_path
        end
    end 

    def destroy
        session.delete :name
        redirect_to root_path
    end
end

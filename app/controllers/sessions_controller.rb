class SessionsController < ApplicationController

    def new

    end

    def create
        # binding.pry
        if params[:name] != "" && params[:name] != nil
            @name = params[:name]
            session[:name] = @name
            redirect_to '/'
        else
            redirect_to '/login'
        end
    end

    def destroy
        if session[:name] == nil
        else
            session[:name] = nil
        end
    end

end

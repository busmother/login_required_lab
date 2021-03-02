class SecretsController < ApplicationController
    before_action :require_login

    def show
        if current_user
            # byebug
            @secret = "I am the secret"
        else
          redirect_to 'sessions#new'
        end
    end


end

module Api
  module V1
    class UserTokenController < Knock::AuthTokenController
        skip_before_action :verify_authenticity_token, raise: false

        def create
            @user=User.where("email = ?",params[:auth][:email]).first;
            render json: {
                jwt: auth_token.token,
                user: @user
            }, status: :created
        end
    end
   end
end    

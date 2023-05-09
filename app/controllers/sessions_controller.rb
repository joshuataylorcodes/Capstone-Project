class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.endcode(
        {
          user_id: user.id, #this is the data to encode
          exp: 168.hours.from_now.to_i, #this is how long the jwt will last until it expires
        },
        Rails.application.credentials.fetch(:secret_key_base), #this is the secret key
        "HS256" #this is the encrypted algorithm
      )
      render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end

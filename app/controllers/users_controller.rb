class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
    render plain: User.all.map {|user| user.to_formatted_string}.join("\n")
    end
    
    def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(
      name: name,
      email: email,
      password: password,
    )
    render plain: "New User Created with the name #{new_user.name}"
  end

end
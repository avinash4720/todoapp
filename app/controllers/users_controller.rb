class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :ensure_user_logged_in

    def index
    render plain: User.all.map {|user| user.to_formatted_string}.join("\n")
    end

    def new
      render "users/new"
    end

    
    def create
    name = params[:name]
    last_name = params[:last_name]
    email = params[:email]
    password = params[:password]
    new_user = User.new(
      name: name,
      email: email,
      password: password,last_name: last_name
    )
    if new_user.save
      redirect_to "/"
    else
      flash[:error] = new_user.errors.full_messages.join(", ")
      redirect_to new_user_path
    end
     end

     def login
        email = params[:email]
        password = params[:password]
        if User.where("email = ? and password = ?", email,password).empty?
          render plain: "FALSE! Login FAILED."
        else
          render plain: "TRUE! Login SUCCESSFUL."
        end
      end

end
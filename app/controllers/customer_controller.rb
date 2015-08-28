class CustomerController < ApplicationController

def home
#     # find user by params[:email]
#     # check if password matches
#     # login user (session[:user_id] = user.id)
# redirect_to root as a signed in user
  render "home"
  end

# #   SessionsController
#   def create
#     # find user by params[:email]
#     # check if password matches
#     # login user (session[:user_id] = user.id)
#   end

def login
  render "login"
end

def register
  @customer = Customer.new
    @customer.first_name = params[:first_name]
    @customer.last_name = params[:last_name]
    @customer.email = params[:email]
    @customer.password = params[:password]

    @customer.save
    # redirect_to ___
  end

end

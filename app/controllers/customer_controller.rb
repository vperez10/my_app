class CustomerController < ApplicationController

def home
  render "home"
  end

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
  end

end

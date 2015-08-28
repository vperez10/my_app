class GroceryController < ApplicationController
before_action :authenticate_user!
skip_before_filter :verify_authenticity_token

def home
  render "home"
end

def list
  # all the stores
    @groceries = AdditionalItem.all
    render "list"
end

def add
  @groceries = AdditionalItem.new
end

def create
    @groceries = AdditionalItem.new
    @groceries.item = params[:item]
    @groceries.quantity = params[:quantity]
    @groceries.expected_cost = params[:expected_cost]
    @groceries.store_id = params[:store_id]

    @groceries.save

    redirect_to("/grocery/list")
end

def edit
  render "edit"
end

end

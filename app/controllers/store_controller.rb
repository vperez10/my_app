class StoreController < ApplicationController
#before_action :authenticate_user!
skip_before_filter :verify_authenticity_token

def index
  @store = Store.all
  end

def add
  @store = Store.new
end

def create
     @store = Store.new
    @store.name = params[:name]
    @store.address = params[:address]
    @store.type = params[:type]
    @store.hours = params[:hours]

    @store.save

    redirect_to("/stores/view")
end

def update
  render "update"
  end

  def view
    # all the stores
    @stores = Store.all
    render "view"
  end
end

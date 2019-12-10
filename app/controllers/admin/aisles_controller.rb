class Admin::AislesController < ApplicationController
  before_action :authenticate_user!

  def new
    @aisle = Aisle.new
  end

  def show
    @aisle = Aisle.find(params[:id])
  end

  def create
    @aisle = Aisle.create(aisle_params)
    redirect_to admin_aisle_path(@aisle)
  end

  private
    def aisle_params
      params.permit(:aname, :adescr)
    end

end

class BillboardsController < ApplicationController
  before_action :set_billb, only: [:show, :edit, :destroy, :update]
  def index
    @bills = Billboard.all
  end

  def show
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @bill = Billboard.new(bill_params)

    if @bill.save
      redirect_to billboards_path
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @bill.update(bill_params)
      redirect_to billboard_path(@bill)
    else 
      render :edit
    end
  end

  def destroy
    @bill.destroy
    redirect_to billboards_path
  end

  private
  
  def set_billb
    @bill = Billboard.find(params[:id])
  end

  def bill_params
    params.require(:billboard).permit(:billboard_name)
  end

end

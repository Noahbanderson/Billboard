class BillboardsController < ApplicationController
  before_action :set_billb, only: [:show, :edit, :destroy, :update]
  def index
    @bills = current_user.billboards
  end

  def show
  end

  def new
    @bill = current_user.billboards.new
    render :template => 'billboards/_form'
  end

  def create
    @bill = current_user.billboards.new(bill_params)

    if @bill.save
      redirect_to billboards_path
    else
      render :new
    end
  end
  
  def edit
    render :template => 'billboards/_form'
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
    @bill = current_user.billboards.find(params[:id])
  end

  def bill_params
    params.require(:billboard).permit(:billboard_name)
  end

end

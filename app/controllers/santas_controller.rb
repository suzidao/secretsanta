class SantasController < ApplicationController
  def index
    @santas = Santa.all
  end

  def show
    @santa = Santa.find(params[:id])
  end

  def new
    @santa = Santa.new
  end

  def create
    @santa = Santa.new(santa_params)
    if @santa.save
      redirect_to @santa
    else
      render 'new'
    end
  end

  def edit
    @santa = Santa.find(params[:id])
  end

  def update
    @santa = Santa.find(params[:id])
    if @santa.update(santa_params)
      redirect_to @santa
    else
      render 'edit'
    end
  end

  def destroy
    @santa = Santa.find(params[:id])
    @santa.destroy
    redirect_to santas_path
  end

  private
  def santa_params
    params.require(:santa).permit(:partyId, :name, :email, :fact1, :fact2, :fact3, :fact4, :fact5)
  end
end

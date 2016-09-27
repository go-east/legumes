class NourrituresController < ApplicationController
  before_action :set_nourriture, only: [:show, :edit, :update, :destroy]

  def index
    @nourritures = Nourriture.all
  end

  def show
  end

  def new
    @nourriture = Nourriture.new
  end

  def create
    @nourriture = Nourriture.new(nourriture_params)
    @nourriture.save
    redirect_to nourritures_path
  end

  def edit
  end

  def update
    @nourriture.update(nourriture_params)
    redirect_to nourritures_path

  end

  def destroy
    @nourriture.destroy
    redirect_to nourritures_path
  end

 private

  def set_nourriture
    @nourriture = Nourriture.find(params[:id])
  end

  def nourriture_params
    params.require(:nourriture).permit(:name)
  end

end

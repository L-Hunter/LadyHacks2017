class AttorneysController < ApplicationController
	before_action :set_attorney, only: [:show, :edit, :update, :destroy]
	
  def index
  	@attorneys = Attorney.all
  end

  def show
  end

  def new
  	@attorney = Attorney.new
  end

  def create
  	@attorney = Attorney.new(attorney_params)
  	@attorney.save

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_attorney
    @attorney = Attorney.find(params[:id])
  end

  def attorney_params
    params.require(:attorney).permit(:name, :status, :district)
  end
end
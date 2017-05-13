class TrialsController < ApplicationController
	before_action :set_trial, only: [:show, :edit, :update, :destroy]
  
  def index
    @trials = Trial.all
  end

  def show
  end

  def new
    @trial = Trial.new
  end

  def create
    @trial = Trial.new(trial_params)
    @trial.save

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_trial
    @trial = Trial.find(params[:id])
  end

  def trial_params
    params.require(:trial).permit(:name, :date, :type, :judgment, :ruling, :opinion_link)
  end
end

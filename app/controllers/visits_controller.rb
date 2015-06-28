class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  def index
    @visits = Visit.order(default_sort)
  end
  
  def default_sort
    params[:sort] ? "#{params[:sort]} DESC" : 'total DESC'
  end

  def show
  end

  def new
    @visit = Visit.new
  end

  def edit
  end

  def create
    @visit = Visit.new(visit_params)
    respond_to do |format|
      if @visit.save
        format.html { redirect_to @visit, notice: 'Visit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @visit }
      else
        format.html { render action: 'new' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to @visit, notice: 'Visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to visits_url }
      format.json { head :no_content }
    end
  end

  private
    def set_visit
      @visit = Visit.find(params[:id])
    end

    def visit_params
      params.require(:visit).permit(:venue, :city, :date, :price_cents, :price_currency, :ambience, :tea, :scones, :savoury, :sweets, :service, :bonus, :comments)
    end
end

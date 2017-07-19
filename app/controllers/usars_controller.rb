class UsarsController < ApplicationController
  def new
    @usar = Usar.new
  end

  def create
    @usar = Usar.new(usar_params)
    if @usar.save
      flash[:success] = "Welcome to the Housing Agents #{@usar.username}"
      redirect_to landlords_path
    else
      render 'new'
    end
  end

  private
  def usar_params
    params.require(:usar).permit(:firstname, :lastname, :username, :department, :role, :password)
  end
end
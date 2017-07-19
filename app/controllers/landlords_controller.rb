class LandlordsController < ActionController::Base
  
  def index
    @landlords = Landlord.all
  end

  def new
    @landlord = Landlord.new
  end

  def edit
    @landlord = Landlord.find(params[:id])
  end

  def create
     # render plain: params[:landlord].inspect
    @landlord = Landlord.new(landlord_params)
    if @landlord.save
      flash[:success] = "Landlord was successfully created"
      redirect_to landlord_path(@landlord)
    else
      render 'new'
    end
  end

  def update
    @landlord = Landlord.find(params[:id])
    if @landlord.update(landlord_params)
      flash[:success] = "Landlord was successfully updated"
      redirect_to landlord_path(@landlord)
    else
      render 'edit'
    end
  end

  def show
    @landlord = Landlord.find(params[:id])
  end

  def destroy
    @landlord = Landlord.find(params[:id])
    @landlord.destroy
    flash[:success] = "Landlord was successfully deleted"
    redirect_to landlords_path
  end

  private 

  def landlord_params
    params.require(:landlord).permit(:firstname, :lastname, :address, :phone)
  end
  
end
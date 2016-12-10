class FicheentreprisesController < ApplicationController
    def index
      @ficheentreprises = Ficheentreprise.all
    end

  def show

    @ficheentreprise = Ficheentreprise.find(params[:id])

  end

  def new
    @ficheentreprise = Ficheentreprise.new
  end
  def create
@ficheentreprise = Ficheentreprise.new(ficheentreprise_params)
   if @ficheentreprise.save
    redirect_to ficheentreprises_path
   else
     render :new
   end
  end

 

  def destroy
     @ficheentreprise =Ficheentreprise.find(params[:id])
    @ficheentreprise.destroy
    redirect_to ficheentreprises_path
  end

  private

  def ficheentreprise_params
    params.require(:ficheentreprise).permit(:name, :url, :tagline, :text, :mail, :photo)
  end
 
end
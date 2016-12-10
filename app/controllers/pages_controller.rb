class PagesController < ApplicationController
  def home
    @tagy =Taguser.all
  end
  def dashboard
       if params[:search]
       @tag = Tag.find_by_name(params[:search])
        if @tag.blank?
             @tag = Tag.find_by_name("search")
        else
            
        end
      else
       @tags = Tag.all
       @tag = Tag.find_by_name("search")
      end
  end
  def create
    @tagy = Taguser.new(tagy_params)
    if @tagy.save
      redirect_to tagusers_path(@tagy)
    else
     render :new
    end
  end
  
   private

  def tagy_params
    params.require(:tag).permit(:tags)
  end
end

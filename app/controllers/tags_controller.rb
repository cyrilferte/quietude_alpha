class TagsController < ApplicationController  
    def index
      @tags = Tag.all
      @tag = Tag.where(name: params[:search])
    end



  def new
    @tag = Tag.new
  end
  def create
@tag = Tag.new(tag_params)
   if @tag.save
    redirect_to tags_path
   else
     render :new
   end
  end
    def show

      @tag = Tag.find(params[:id])

    end
 

  def destroy
     @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tages_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :classe, :titre, :text, :url, :search)
  end
 
end

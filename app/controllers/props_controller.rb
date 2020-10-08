class PropsController < ApplicationController
  def new
    @prop = Prop.new
  end

  def show
    
  #   @prop = Prop.find(Prop.pluck(:id).sample)
  # #   @props= Prop.where("user LIKE ?", "%"+params[:q]+"%")
  end
  
  def create
    @prop = Prop.create(params.require(:prop).permit(:content, :user))
  end
  
  def index
    @props= Prop.all
  end
  

  # private
  
  # def prop_params
  #   params.require(:prop).permit(:content)
  # end
end


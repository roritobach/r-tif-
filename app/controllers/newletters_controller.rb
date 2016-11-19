class NewlettersController < InheritedResources::Base



  skip_before_action :authenticate_user!, only: [:new, :create]





  def new
    @newletter = Newletter.new


  end



  def create
    @newletter = Newletter.new(newletter_params)



    if @newletter.save
      redirect_to root_path, notice: "Vos Email hace bien mandaste ."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end


  private

    def newletter_params
      params.require(:newletter).permit(:email)
    end
end



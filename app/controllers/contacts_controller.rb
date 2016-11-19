class ContactsController < ApplicationController


  skip_before_action :authenticate_user!, only: [:new, :create]



  def index
    @contacts = Contact.all

  end


  def new
    @contact = Contact.new


  end



  def create
    @contact = Contact.new(contact_params)



    if @contact.save
      redirect_to root_path, notice: "Vos Mesaje hace bien mandaste ."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end


  private

    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :content)
    end
end


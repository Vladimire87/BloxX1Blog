class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params.require(:contact).permit(:email, :message))
    if @contact.valid?
    else
      render :new, status: :unprocessable_entity
    end
  end

end

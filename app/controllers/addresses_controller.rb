class AddressesController < ApplicationController
  def index
    @contacts = Contact.find(params[:contact_id])
    @addresses = @contacts.address.all
  end

  def show
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address
  end

  def new
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address.new
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address.create(address_params)
    if @address.save
      redirect_to @address
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:contact_id])
    @address = @contact.address.find(params[:id])
    if @address.update(address_params)
      redirect_to @address
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @contact.address.find(params[:id]).destroy
    redirect_to contacts_path
  end

  private

  def address_params
    params.require(:address).permit(:city, :state, :zip, :contact_id)
  end
end

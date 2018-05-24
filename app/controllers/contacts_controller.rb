class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contacts = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    if @contact.save
      redirect_to @contact
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update
      redirect_to @contact
    else
      render :edit
    end
  end

  def destroy
  end

  private

  
end

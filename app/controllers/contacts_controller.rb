class ContactsController < ApplicationController
  # def get_first_contact

  #   # render json: {id: recipe.id, name123: recipe.name, ingredients: recipe.ingredients, directions: recipe.directions, prep_time: recipe.prep_time, image_url: recipe.image_url}

  #   contact = Contact.first
  #   render json: {
  #     id: contact.id,
  #     first_name: contact.first_name,
  #     last_name: contact.last_name,
  #     email: contact.email,
  #     phone_number: contact.phone_number,
  #   }
  # end

  def index
    @contacts = Contact.all
    render :index
  end

  def show
    @contact = Contact.first
    render :show
  end

  #In your contacts app, allow the user to save/see an address for their contacts
  #save = create?
  #add another column "address"
  def create
    @contact = Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    render :show
  end
end

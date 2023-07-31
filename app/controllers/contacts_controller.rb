class ContactsController < ApplicationController
  def get_first_contact

    # render json: {id: recipe.id, name123: recipe.name, ingredients: recipe.ingredients, directions: recipe.directions, prep_time: recipe.prep_time, image_url: recipe.image_url}

    contact = Contact.first
    render json: {
      id: contact.id,
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number,
    }
  end
end

class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact= Contact.new()
    @schools = School.where.not(latitude: nil, longitude: nil)
    @markers = get_coordonates(@schools)
  end

  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
      ContactMailer.send_contact(@contact).deliver_now
      redirect_to contact_success_path
    else
      render :new
    end
  end

  def success
  end

  private

  def contacts_params
    params.require(:contact).permit(:subject, :full_name_parent, :phone, :email, :message)
  end

  def get_coordonates(schools)
    schools.map do |school|
      { lat: school.latitude,
        lng: school.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end
end

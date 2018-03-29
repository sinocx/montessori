class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact= Contact.new()
    @schools = School.where.not(latitude: nil, longitude: nil)

      @markers = @schools.map do |school|
        {
          lat: school.latitude,
          lng: school.longitude#,
          # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }
    end
  end

  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
      ContactMailer.send_contact(@contact).deliver_now
    else
      render :new
    end

  end

  private

  def contacts_params
    params.require(:contact).permit(:subject, :full_name_parent, :child_full_name, :child_birth_date, :child_first_lang, :phone, :email, :message)
  end

end

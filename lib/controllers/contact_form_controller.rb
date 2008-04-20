class ContactFormController < ApplicationController

  def contact_form
      render_liquid_template_for(:contact_us, :status => "200 OK")
  end

  def contact_submit
    message = ContactMessage.new(params[:contact])
    if (message.valid?)
      ContactNotifier.deliver_contact_notification(message)
      render_liquid_template_for(:contact_us, 'message' => "Thank you for your feedback.", :status => "200 OK")
    else
      render_liquid_template_for(:contact_us, 'errors' => message.errors.full_messages, 
        'submitted' => params[:contact], :status => "200 OK")
    end
  end
end

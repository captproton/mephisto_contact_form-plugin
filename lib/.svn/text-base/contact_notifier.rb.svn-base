class ContactNotifier < ActionMailer::Base
  include Mephisto::Liquid::UrlMethods
  
  self.template_root = File.dirname(__FILE__) + '/views'
  
  def contact_notification(contact_message)
    recipients      "ENTER DESTINATION EMAIL ADDRESS HERE"
    from            contact_message.author_email
    subject         "[Mephisto Contact Form] #{contact_message.subject}"
    body            "contact_message" => contact_message
  end
end


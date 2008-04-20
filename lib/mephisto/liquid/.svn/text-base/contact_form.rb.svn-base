module Mephisto
  module Liquid
    class ContactForm < ::Liquid::Block

      def render(context)
        result = []
	
        context.stack do

          if context['message'].blank? 
            errors = context['errors'].blank? ? '' : %Q{<ul id="contact-errors"><li>#{context['errors'].join('</li><li>')}</li></ul>}

            submitted = context['submitted'] || {}
            submitted.each{ |k, v| submitted[k] = CGI::escapeHTML(v) }
            
            context['form'] = {
              'body'   => %(<textarea id="contact_body" name="contact[body]" rows=10>#{submitted['body']}</textarea>),
              'name'   => %(<input type="text" id="contact_author" name="contact[author]" value="#{submitted['author']}" />),
              'subject'   => %(<input type="text" id="contact_subject" name="contact[subject]" value="#{submitted['subject']}" />),
              'phone'   => %(<input type="text" id="contact_author_phone" name="contact[author_phone]" value="#{submitted['author_phone']}" />),
              'email'  => %(<input type="text" id="contact_author_email" name="contact[author_email]" value="#{submitted['author_email']}" />),
              'submit' => %(<input type="submit" value="Send" />)
            }
            
            result << %(<form id="contact-form" method="post" action="/contact_submit">#{[errors]+render_all(@nodelist, context)}</form>)
          else
            result << %(<p id="contact-message">#{context['message']}</p>)
          end
        end
        result
      end
    end
  end
end

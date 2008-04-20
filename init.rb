require 'mephisto_contact_form'

models_path = File.dirname(__FILE__) + '/lib/models'
$LOAD_PATH << models_path
Dependencies.load_paths << models_path

controller_path = File.dirname(__FILE__) + '/lib/controllers'
$LOAD_PATH << controller_path
Dependencies.load_paths << controller_path
config.controller_paths << controller_path

require File.join(lib_path, 'plugin')

Liquid::Template.register_tag(:contactform, Mephisto::Liquid::ContactForm)
 
Dependencies.load_once_paths.delete(lib_path)


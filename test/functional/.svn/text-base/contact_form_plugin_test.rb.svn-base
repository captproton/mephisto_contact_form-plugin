require 'test/unit'
require File.dirname(__FILE__) + '/../test_helper'

class ContactFormPluginTest < ActionController::IntegrationTest

  def test_contact_form_route
    get "/contact_form"
    assert_response :success
    assert_select "h1", "Contact Us"
  end

  def test_contact_submit_route
    post "/contact_submit"
    assert_response :success
    assert_select "h1", "Contact Us"
  end

end

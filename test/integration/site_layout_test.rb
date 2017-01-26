require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
   test "layout links" do
     get root_path
     assert_template 'static_pages/home'
     assert_select "a[href=?]", root_path, count: 2
     assert_select "a[href=?]", ajuda_path
     assert_select "a[href=?]", regras_path
     assert_select "a[href=?]", contatos_path
   end
end

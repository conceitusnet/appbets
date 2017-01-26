require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  #def setup
  #  @base_title = "Bolão do brasileirão 2017"
  #end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Bolão do brasileirão 2017"
  end

  test "should get ajuda" do
    get static_pages_ajuda_url
    assert_response :success
    assert_select "title", "Ajuda | Bolão do brasileirão 2017"
  end

  test "should get regras" do
    get static_pages_regras_url
    assert_response :success
    assert_select "title", "Regras | Bolão do brasileirão 2017"
  end

end

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
    get ajuda_path
    assert_response :success
    assert_select "title", "Ajuda | Bolão do brasileirão 2017"
  end

  test "should get regras" do
    get regras_path
    assert_response :success
    assert_select "title", "Regras | Bolão do brasileirão 2017"
  end

  test "should get contatos" do
    get contatos_path
    assert_response :success
    assert_select "title", "Contatos | Bolão do brasileirão 2017"
  end

end

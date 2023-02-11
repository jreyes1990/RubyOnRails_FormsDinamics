require 'rails_helper'

RSpec.describe "font_awesomes/edit", type: :view do
  before(:each) do
    @font_awesom = assign(:font_awesom, FontAwesom.create!(
      icono: "MyString",
      prefijo_nombre: "MyString",
      termino: "MyString",
      codigo_css: "MyString",
      tipo_icono: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado: "MyString"
    ))
  end

  it "renders the edit font_awesom form" do
    render

    assert_select "form[action=?][method=?]", font_awesom_path(@font_awesom), "post" do

      assert_select "input[name=?]", "font_awesom[icono]"

      assert_select "input[name=?]", "font_awesom[prefijo_nombre]"

      assert_select "input[name=?]", "font_awesom[termino]"

      assert_select "input[name=?]", "font_awesom[codigo_css]"

      assert_select "input[name=?]", "font_awesom[tipo_icono]"

      assert_select "input[name=?]", "font_awesom[user_created_id]"

      assert_select "input[name=?]", "font_awesom[user_updated_id]"

      assert_select "input[name=?]", "font_awesom[estado]"
    end
  end
end

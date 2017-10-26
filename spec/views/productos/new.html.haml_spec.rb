require 'rails_helper'

RSpec.describe "productos/new", type: :view do
  before(:each) do
    assign(:producto, Producto.new(
      :descripcion => "MyString",
      :medida => nil,
      :valor => "9.99"
    ))
  end

  it "renders new producto form" do
    render

    assert_select "form[action=?][method=?]", productos_path, "post" do

      assert_select "input[name=?]", "producto[descripcion]"

      assert_select "input[name=?]", "producto[medida_id]"

      assert_select "input[name=?]", "producto[valor]"
    end
  end
end

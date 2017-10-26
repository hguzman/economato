require 'rails_helper'

RSpec.describe "productos/edit", type: :view do
  before(:each) do
    @producto = assign(:producto, Producto.create!(
      :descripcion => "MyString",
      :medida => nil,
      :valor => "9.99"
    ))
  end

  it "renders the edit producto form" do
    render

    assert_select "form[action=?][method=?]", producto_path(@producto), "post" do

      assert_select "input[name=?]", "producto[descripcion]"

      assert_select "input[name=?]", "producto[medida_id]"

      assert_select "input[name=?]", "producto[valor]"
    end
  end
end

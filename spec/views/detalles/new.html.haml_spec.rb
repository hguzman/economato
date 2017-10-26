require 'rails_helper'

RSpec.describe "detalles/new", type: :view do
  before(:each) do
    assign(:detalle, Detalle.new(
      :producto => nil,
      :cantidad => "9.99",
      :consolidado => nil
    ))
  end

  it "renders new detalle form" do
    render

    assert_select "form[action=?][method=?]", detalles_path, "post" do

      assert_select "input[name=?]", "detalle[producto_id]"

      assert_select "input[name=?]", "detalle[cantidad]"

      assert_select "input[name=?]", "detalle[consolidado_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "detalles/edit", type: :view do
  before(:each) do
    @detalle = assign(:detalle, Detalle.create!(
      :producto => nil,
      :cantidad => "9.99",
      :consolidado => nil
    ))
  end

  it "renders the edit detalle form" do
    render

    assert_select "form[action=?][method=?]", detalle_path(@detalle), "post" do

      assert_select "input[name=?]", "detalle[producto_id]"

      assert_select "input[name=?]", "detalle[cantidad]"

      assert_select "input[name=?]", "detalle[consolidado_id]"
    end
  end
end

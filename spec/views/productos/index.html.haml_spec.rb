require 'rails_helper'

RSpec.describe "productos/index", type: :view do
  before(:each) do
    assign(:productos, [
      Producto.create!(
        :descripcion => "Descripcion",
        :medida => nil,
        :valor => "9.99"
      ),
      Producto.create!(
        :descripcion => "Descripcion",
        :medida => nil,
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of productos" do
    render
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

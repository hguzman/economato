require 'rails_helper'

RSpec.describe "productos/show", type: :view do
  before(:each) do
    @producto = assign(:producto, Producto.create!(
      :descripcion => "Descripcion",
      :medida => nil,
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end

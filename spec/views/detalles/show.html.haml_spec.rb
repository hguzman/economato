require 'rails_helper'

RSpec.describe "detalles/show", type: :view do
  before(:each) do
    @detalle = assign(:detalle, Detalle.create!(
      :producto => nil,
      :cantidad => "9.99",
      :consolidado => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end

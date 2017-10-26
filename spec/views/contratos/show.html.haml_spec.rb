require 'rails_helper'

RSpec.describe "contratos/show", type: :view do
  before(:each) do
    @contrato = assign(:contrato, Contrato.create!(
      :numero => "Numero",
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Numero/)
    expect(rendered).to match(/9.99/)
  end
end

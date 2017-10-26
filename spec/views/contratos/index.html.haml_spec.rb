require 'rails_helper'

RSpec.describe "contratos/index", type: :view do
  before(:each) do
    assign(:contratos, [
      Contrato.create!(
        :numero => "Numero",
        :valor => "9.99"
      ),
      Contrato.create!(
        :numero => "Numero",
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of contratos" do
    render
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

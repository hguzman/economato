require 'rails_helper'

RSpec.describe "contratos/edit", type: :view do
  before(:each) do
    @contrato = assign(:contrato, Contrato.create!(
      :numero => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders the edit contrato form" do
    render

    assert_select "form[action=?][method=?]", contrato_path(@contrato), "post" do

      assert_select "input[name=?]", "contrato[numero]"

      assert_select "input[name=?]", "contrato[valor]"
    end
  end
end

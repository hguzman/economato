require 'rails_helper'

RSpec.describe "contratos/new", type: :view do
  before(:each) do
    assign(:contrato, Contrato.new(
      :numero => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders new contrato form" do
    render

    assert_select "form[action=?][method=?]", contratos_path, "post" do

      assert_select "input[name=?]", "contrato[numero]"

      assert_select "input[name=?]", "contrato[valor]"
    end
  end
end

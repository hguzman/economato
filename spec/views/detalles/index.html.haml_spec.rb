require 'rails_helper'

RSpec.describe "detalles/index", type: :view do
  before(:each) do
    assign(:detalles, [
      Detalle.create!(
        :producto => nil,
        :cantidad => "9.99",
        :consolidado => nil
      ),
      Detalle.create!(
        :producto => nil,
        :cantidad => "9.99",
        :consolidado => nil
      )
    ])
  end

  it "renders a list of detalles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

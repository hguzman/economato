require 'rails_helper'

RSpec.describe "fichas/index", type: :view do
  before(:each) do
    assign(:fichas, [
      Ficha.create!(
        :program => nil
      ),
      Ficha.create!(
        :program => nil
      )
    ])
  end

  it "renders a list of fichas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "consolidados/index", type: :view do
  before(:each) do
    assign(:consolidados, [
      Consolidado.create!(
        :teacher => nil
      ),
      Consolidado.create!(
        :teacher => nil
      )
    ])
  end

  it "renders a list of consolidados" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

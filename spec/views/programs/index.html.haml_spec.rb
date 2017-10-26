require 'rails_helper'

RSpec.describe "programs/index", type: :view do
  before(:each) do
    assign(:programs, [
      Program.create!(
        :codigo => "123",
        :nombre => "Computadores"
      ),
      Program.create!(
        :codigo => "345",
        :nombre => "Mesas"
      )
    ])
  end

  it "renders a list of programs" do
    render
    assert_select "tr>td", :text => "123".to_s
  end
end

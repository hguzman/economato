require 'rails_helper'

RSpec.describe "programs/new", type: :view do
  before(:each) do
    assign(:program, Program.new(
      :codigo => "MyString",
      :nombre => "MyString"
    ))
  end

  it "renders new program form" do
    render

    assert_select "form[action=?][method=?]", programs_path, "post" do

      assert_select "input[name=?]", "program[codigo]"

      assert_select "input[name=?]", "program[nombre]"
    end
  end
end

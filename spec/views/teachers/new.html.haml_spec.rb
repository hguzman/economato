require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :nombre => "MyString",
      :contrato => "MyString",
      :celular => "MyString"
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input[name=?]", "teacher[nombre]"

      assert_select "input[name=?]", "teacher[contrato]"

      assert_select "input[name=?]", "teacher[celular]"
    end
  end
end

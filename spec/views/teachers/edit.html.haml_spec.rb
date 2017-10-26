require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :nombre => "MyString",
      :contrato => "MyString",
      :celular => "MyString"
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do

      assert_select "input[name=?]", "teacher[nombre]"

      assert_select "input[name=?]", "teacher[contrato]"

      assert_select "input[name=?]", "teacher[celular]"
    end
  end
end

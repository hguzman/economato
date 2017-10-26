require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :nombre => "Nombre",
        :contrato => "Contrato",
        :celular => "Celular"
      ),
      Teacher.create!(
        :nombre => "Nombre",
        :contrato => "Contrato",
        :celular => "Celular"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Contrato".to_s, :count => 2
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
  end
end

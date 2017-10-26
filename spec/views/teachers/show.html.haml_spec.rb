require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :nombre => "Nombre",
      :contrato => "Contrato",
      :celular => "Celular"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Contrato/)
    expect(rendered).to match(/Celular/)
  end
end

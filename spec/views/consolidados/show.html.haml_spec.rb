require 'rails_helper'

RSpec.describe "consolidados/show", type: :view do
  before(:each) do
    @consolidado = assign(:consolidado, Consolidado.create!(
      :teacher => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end

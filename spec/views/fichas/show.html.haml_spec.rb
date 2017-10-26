require 'rails_helper'

RSpec.describe "fichas/show", type: :view do
  before(:each) do
    @ficha = assign(:ficha, Ficha.create!(
      :program => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end

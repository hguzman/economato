require 'rails_helper'

RSpec.describe "fichas/edit", type: :view do
  before(:each) do
    @ficha = assign(:ficha, Ficha.create!(
      :program => nil
    ))
  end

  it "renders the edit ficha form" do
    render

    assert_select "form[action=?][method=?]", ficha_path(@ficha), "post" do

      assert_select "input[name=?]", "ficha[program_id]"
    end
  end
end

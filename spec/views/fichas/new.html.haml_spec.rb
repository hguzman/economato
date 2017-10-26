require 'rails_helper'

RSpec.describe "fichas/new", type: :view do
  before(:each) do
    assign(:ficha, Ficha.new(
      :program => nil
    ))
  end

  it "renders new ficha form" do
    render

    assert_select "form[action=?][method=?]", fichas_path, "post" do

      assert_select "input[name=?]", "ficha[program_id]"
    end
  end
end

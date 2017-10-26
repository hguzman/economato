require 'rails_helper'

RSpec.describe "consolidados/new", type: :view do
  before(:each) do
    assign(:consolidado, Consolidado.new(
      :teacher => nil
    ))
  end

  it "renders new consolidado form" do
    render

    assert_select "form[action=?][method=?]", consolidados_path, "post" do

      assert_select "input[name=?]", "consolidado[teacher_id]"
    end
  end
end

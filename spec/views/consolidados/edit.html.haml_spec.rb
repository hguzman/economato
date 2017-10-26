require 'rails_helper'

RSpec.describe "consolidados/edit", type: :view do
  before(:each) do
    @consolidado = assign(:consolidado, Consolidado.create!(
      :teacher => nil
    ))
  end

  it "renders the edit consolidado form" do
    render

    assert_select "form[action=?][method=?]", consolidado_path(@consolidado), "post" do

      assert_select "input[name=?]", "consolidado[teacher_id]"
    end
  end
end

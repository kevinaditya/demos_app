require 'spec_helper'

describe "terms/edit" do
  before(:each) do
    @term = assign(:term, stub_model(Term,
      :content => "MyString",
      :order => 1
    ))
  end

  it "renders the edit term form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", term_path(@term), "post" do
      assert_select "input#term_content[name=?]", "term[content]"
      assert_select "input#term_order[name=?]", "term[order]"
    end
  end
end

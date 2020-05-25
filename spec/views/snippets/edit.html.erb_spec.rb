require 'rails_helper'

RSpec.describe "snippets/edit", type: :view do
  before(:each) do
    @snippet = assign(:snippet, Snippet.create!(
      :title => "MyString",
      :language => "MyString",
      :contents => "MyString"
    ))
  end

  it "renders the edit snippet form" do
    render

    assert_select "form[action=?][method=?]", snippet_path(@snippet), "post" do

      assert_select "input[name=?]", "snippet[title]"

      assert_select "input[name=?]", "snippet[language]"

      assert_select "input[name=?]", "snippet[contents]"
    end
  end
end

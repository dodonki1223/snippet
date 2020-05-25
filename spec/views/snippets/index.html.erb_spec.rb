require 'rails_helper'

RSpec.describe "snippets/index", type: :view do
  before(:each) do
    assign(:snippets, [
      Snippet.create!(
        :title => "Title",
        :language => "Language",
        :contents => "Contents"
      ),
      Snippet.create!(
        :title => "Title",
        :language => "Language",
        :contents => "Contents"
      )
    ])
  end

  it "renders a list of snippets" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Contents".to_s, :count => 2
  end
end

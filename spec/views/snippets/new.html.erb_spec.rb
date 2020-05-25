# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'snippets/new', type: :view do
  before do
    assign(:snippet, Snippet.new(title: 'MyString', language: 'MyString', contents: 'MyString'))
  end

  it 'renders new snippet form' do
    render
    assert_select 'form[action=?][method=?]', snippets_path, 'post' do
      assert_select 'input[name=?]', 'snippet[title]'
      assert_select 'input[name=?]', 'snippet[language]'
      assert_select 'input[name=?]', 'snippet[contents]'
    end
  end
end

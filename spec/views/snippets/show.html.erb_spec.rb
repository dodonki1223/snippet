# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'snippets/show', type: :view do
  before do
    @snippet = assign(:snippet, Snippet.create!(title: 'Title', language: 'Language', contents: 'Contents'))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Contents/)
  end
end

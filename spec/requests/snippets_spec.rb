# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Snippets', type: :request do
  describe 'GET /snippets' do
    it 'works! (now write some real specs)' do
      # developmentでテストをじっこうすると 以下のようなエラーがでて403が返ってくる
      #   To allow requests to www.example.com, add the following to your environment configuration:
      #   config.hosts "www.example.com"
      # テストを実行する時は RAILS_ENV=test で実行すること
      # ref:https://qiita.com/taiteam/items/a37c60fc15c1aa5bb606#3-2-%E3%83%87%E3%83%95%E3%82%A9%E3%83%AB%E3%83%88%E8%A8%AD%E5%AE%9A
      get snippets_path
      expect(response).to have_http_status(200)
    end
  end
end

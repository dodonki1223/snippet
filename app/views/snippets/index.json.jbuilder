# frozen_string_literal: true

json.array! @snippets, partial: 'snippets/snippet', as: :snippet

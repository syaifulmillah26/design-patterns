# frozen_string_literal: true

module Adapter
  # The Target defines the domain-specific interface used by the client code.
  class Target
    # @return [String]
    def request
      'Target: The default target\'s behavior.'
    end
  end
end

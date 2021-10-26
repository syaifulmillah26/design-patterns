# frozen_string_literal: true

module Adapter
  # The Adaptee contains some useful behavior, but its interface is incompatible
  # with the existing client code. The Adaptee needs some adaptation before the
  # client code can use it.
  class Adaptee
    # @return [String]
    def specific_request
      '.eetpadA eht fo roivaheb laicepS'
    end
  end
end

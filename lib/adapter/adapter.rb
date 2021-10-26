# frozen_string_literal: true

module Adapter
  # The Adapter makes the Adaptee's interface compatible with the Target's
  # interface.
  class Adapter < Adapter::Target
    # @param [Adaptee] adaptee
    def initialize(adaptee)
      super if self.class.superclass.methods.include?(:initialize)

      @adaptee = adaptee
    end

    def request
      "Adapter: (TRANSLATED) #{@adaptee.specific_request.reverse}"
    end
  end
end

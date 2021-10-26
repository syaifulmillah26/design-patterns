# frozen_string_literal: true

module Prototype
  class ComponentWithBackReference
    attr_accessor :prototype

    # @param [Prototype] prototype
    def initialize(prototype)
      @prototype = prototype
    end
  end
end

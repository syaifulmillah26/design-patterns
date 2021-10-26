# frozen_string_literal: true

module Decorator
  # Class User
  class User
    attr_reader :first_name, :last_name

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end
  end
end

# frozen_string_literal: true

module Decorator
  # Class DecoratedUser
  class DecoratedUser < SimpleDelegator
    def initialize(user)
      @user = user
      super # we should use super to extend the attributes from user model
    end

    def full_name
      "#{first_name} #{last_name}"
    end
  end
end

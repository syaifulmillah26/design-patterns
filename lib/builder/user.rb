# frozen_string_literal: true

module Builder
  # creating class user
  class User
    attr_accessor :name, :phone, :code, :address

    def initialize(name, phone, code, address)
      @name = name
      @phone = phone
      @code = code
      @address = address
    end
  end
end

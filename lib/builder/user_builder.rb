# frozen_string_literal: true

module Builder
  # creating UserBuilder
  class UserBuilder
    attr_accessor :name, :phone, :code, :address

    # e.g
    # user_builder = Builder::UserBuilder.new
    # user_builder.add_name('saiful').add_phone('098787867')
    # .add_code('7HGU78')
    # .build!
    def add_name(name)
      @name = name
      self
    end

    def add_phone(phone)
      @phone = phone
      self
    end

    def add_code(code)
      @code = code
      self
    end

    def add_address(address)
      @address = Builder::Address.new(street: address)
      self
    end

    def build!
      Builder::User.new(name, phone, code, address)
    end
  end
end

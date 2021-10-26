# frozen_string_literal: true

module Builder
  # creating class employee
  class Employee
    attr_accessor :name, :address

    def initialize(name, opt = { address: '' })
      opt = OpenStruct.new(opt)
      @name = name
      @address = opt.address
    end
  end
end

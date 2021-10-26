# frozen_string_literal: true

module Builder
  # creating class Address
  class Address
    attr_accessor :street, :zipcode, :city, :province, :region, :phone

    def initialize(opt = {
      street: 'default',
      zipcode: 1,
      city: 'Bogor',
      province: 'Jawa Barat',
      region: 'INA',
      phone: '08765654654'
    })
      opt = OpenStruct.new(opt)
      @street = opt.street
      @zipcode = opt.zipcode
      @city = opt.city
      @province = opt.province
      @region = opt.region
      @phone = opt.phone
    end
  end
end

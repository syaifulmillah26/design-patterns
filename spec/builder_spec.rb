# frozen_string_literal: true

RSpec.describe Builder, 'Pattern' do
  context 'Address' do
    it 'should return the default address' do
      address = Builder::Address.new
      expect(address.street).to eq('default')
    end

    it 'should return the custom address' do
      address = Builder::Address.new(street: 'jl. pirus kp. baru tegal')
      expect(address.street).to eq('jl. pirus kp. baru tegal')
    end
  end

  context 'User' do
    it 'should return the default user' do
      user_builder = Builder::UserBuilder.new
      user_builder.add_name('saiful').build!
      expect(user_builder.name).to eq('saiful')
    end

    it 'should return the custom user' do
      user_builder = Builder::UserBuilder.new
      user_builder
        .add_name('saiful')
        .add_phone('098787867')
        .add_code('7HGU78')
        .build!
      expect(user_builder.code).to eq('7HGU78')
    end

    it 'should return the custom user with address' do
      user_builder = Builder::UserBuilder.new
      user_builder
        .add_name('saiful')
        .add_phone('098787867')
        .add_code('7HGU78')
        .add_address('jl. pirus kp. baru tegal')
        .build!
      expect(user_builder.address.street).to eq('jl. pirus kp. baru tegal')
    end
  end

  context 'Employee' do
    it 'should return employee with the address object' do
      employee = Builder::Employee.new(
        'saiful',
        address: Builder::Address.new(street: 'jl. pirus kp. baru tegal')
      )
      expect(employee.address.street).to eq('jl. pirus kp. baru tegal')
    end
  end
end

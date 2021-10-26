# frozen_string_literal: true

RSpec.describe AbstractFactory, 'Method' do
  context 'Car Object' do
    it 'should return a car object' do
      car = AbstractFactory::CarFactory.new('bmw')
      expect(car.name).to eq('bmw')
    end

    it 'should deliver by road' do
      car = AbstractFactory::CarFactory.new('bmw')
      factory = AbstractFactory::Factory.new(car)
      expect(factory.deliver!).to eq('deliver by road')
    end
  end

  context 'Ship Object' do
    it 'should return a ship object' do
      ship = AbstractFactory::ShipFactory.new('sunew')
      expect(ship.name).to eq('sunew')
    end

    it 'should deliver by sea' do
      ship = AbstractFactory::ShipFactory.new('sunew')
      factory = AbstractFactory::Factory.new(ship)
      expect(factory.deliver!).to eq('deliver by sea')
    end
  end
end

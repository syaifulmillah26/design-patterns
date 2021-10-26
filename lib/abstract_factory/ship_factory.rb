# frozen_string_literal: true

module AbstractFactory
  # The ship factory handles the
  # creation the coresponding deliver.
  #
  # The ship factory conforms
  # to the Abstract Factory pattern in that
  # it is creating a family of related
  # objects.
  class ShipFactory
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def deliver!
      'deliver by sea'
    end
  end
end

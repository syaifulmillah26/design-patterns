# frozen_string_literal: true

module AbstractFactory
  # The car factory handles the
  # creation the coresponding deliver.
  #
  # The car factory conforms
  # to the Abstract Factory pattern in that
  # it is creating a family of related
  # objects.
  class CarFactory
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def deliver!
      'deliver by road'
    end
  end
end

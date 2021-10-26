# frozen_string_literal: true

module Decorator
  # Decorator
  # The Decorator pattern adds new functionality to an existing object by
  # wrapping it with additional objects containing the new features.
  # This helps to modify an instance of a class for extra features
  # and not define new static subclasses in the code.

  # Problem
  # Imagine you are trying to build cars using programming,
  # and you don’t want to go into the hassle of creating extensive builders
  # for all types of possible cars. Instead, you want to begin
  # by creating an introductory car class with the most standard
  # features and preferences. Now, if you need to customize, say,
  # the car’s roof to be collapsible, you would conventionally need
  # to extend the base car class to a subclass and provide it with a
  # collapsible roof attribute. If you again need to change a feature,
  # say, add carbon hoods to the car, you need to extend the base class again.
  # It might seem evident now that you must create a new, static class in your
  # codebase for each customization, but this can very quickly bloat the code.

  # Solution
  # Decorators solve this issue by providing a set of interfaces that
  # can take in a plain, base class object and return a decorated version
  # of that object, meaning wrap it around with the feature requested.
  # This way, your base class stays clean and straightforward,
  # and your decorators are highly modularised, covering only the features needed.

  # When To Use
  # The Decorator pattern is helpful in the following situations:

  # When you want to make modifications to existing objects
  # of a class rather than a class itself.
  # When you want each additional feature to be independent of
  # others without following a fixed sequence to modify the object.
  # Example
  # Here’s how you can create a decorator for the above problem:
  class CarDecorator < SimpleDelegator
    def roof
      'collapsible'
    end

    def nos
      'nos power'
    end

    def self.decorate(car)
      new(car)
    end

    private

    def model
      __getobj__
    end
  end
end

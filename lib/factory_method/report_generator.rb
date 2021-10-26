# frozen_string_literal: true

module FactoryMethod
  # the factory method pattern is a creational pattern
  # that uses factory methods to deal with the problem of creating objects
  # without having to specify the exact class of the object that will be created
  class ReportGenerator
    # these are the types of formatter: [csv, json, tsv]
    def self.generate(data, type)
      FactoryMethod::Formatter.for(type).format(data)
    end
  end
end

# frozen_string_literal: true

module FactoryMethod
  # this is an example for a basic formatter report
  # without implementing a Factory Method
  # looks ugly yeah?
  class ReportBasicFormatter
    def self.generate(data, type)
      return '' if data.empty? || !%w[csv tsv json].include?(type)

      if type == 'csv'
        result = data.keys.join(',') + "\n"
        result += data.values.join(',') + "\n"
      elsif type == 'tsv'
        result = data.keys.join("\t") + "\n"
        result += data.values.join("\t") + "\n"
      elsif type == 'json'
        result = data.to_json
      end

      result
    end
  end
end

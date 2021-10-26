# frozen_string_literal: true

module FactoryMethod
  # Switching Formatter based on type
  class Formatter
    def self.for(type)
      case type
      when 'csv' then CsvFormatter.new
      when 'json' then JsonFormatter.new
      when 'tsv' then TsvFormatter.new
      else raise 'Unsupported type of report'
      end
    end
  end

  # create Csv Formatter
  class CsvFormatter
    def format(data)
      return '' if data.empty?

      result = "#{data.keys.join(',')} \n"
      result += "#{data.values.join(',')} \n"
      result
    end
  end

  # create Json Formatter
  class JsonFormatter
    def format(data)
      return '' if data.empty?

      data.to_json
    end
  end

  # Tsv Formatter
  class TsvFormatter
    def format(data)
      return '' if data.empty?

      result = "#{data.keys.join("\t")} \n"
      result += "#{data.values.join("\t")} \n"
      result
    end
  end
end

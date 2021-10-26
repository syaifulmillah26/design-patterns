# frozen_string_literal: true

RSpec.describe FactoryMethod, 'Pattern' do
  context 'Formatter' do
    it 'should return csv formatter' do
      data = { foo_key: 'foo', bar_key: 'bar', baz_key: 'baz' }
      generator = FactoryMethod::ReportGenerator.generate(data, 'csv')
      expect(generator.class).to eq(String)
    end

    it 'should return json formatter' do
      data = { foo_key: 'foo', bar_key: 'bar', baz_key: 'baz' }
      generator = FactoryMethod::ReportGenerator.generate(data, 'json')
      expect(generator.class).to eq(String)
    end

    it 'should return tsv formatter' do
      data = { foo_key: 'foo', bar_key: 'bar', baz_key: 'baz' }
      generator = FactoryMethod::ReportGenerator.generate(data, 'tsv')
      expect(generator.class).to eq(String)
    end

    it 'should return Unsupported type of report' do
      data = { foo_key: 'foo', bar_key: 'bar', baz_key: 'baz' }
      generator = FactoryMethod::ReportGenerator
      expect do
        raise generator.generate(data, 'test')
      end.to raise_error.with_message('Unsupported type of report')
    end
  end
end

# frozen_string_literal: true

module Facade
  # create a simple facade pattern
  # example payload for HttpModule
  # query: { limit: 10, offset: 0 }
  # headers: { 'authorization': 'Bearer fdhgdoshfai' }
  # body: { user: { name: 'name', email: 'email' } }.to_json
  module HttpModule
    def get(url, opt = {})
      @resp = HTTParty.get(
        url, headers: opt[:headers], body: opt[:body], query: opt[:query]
      )
      return_response
    end

    def post(url, opt = {})
      @resp = HTTParty.post(
        url, headers: opt[:headers], body: opt[:body], query: opt[:query]
      )
      return_response
    end

    def put(url, opt = {})
      @resp = HTTParty.put(
        url, headers: opt[:headers], body: opt[:body], query: opt[:query]
      )
      return_response
    end

    def delete(url, opt = {})
      @resp = HTTParty.delete(
        url, headers: opt[:headers], body: opt[:body], query: opt[:query]
      )
      return_response
    end

    private

    def return_response
      return result if @resp.code == 200

      raise "Error code: #{@resp.code}, message: #{@resp.message}"
    end

    def result
      JSON.parse(@resp.parsed_response.to_json, object_class: OpenStruct)
    end
  end
end

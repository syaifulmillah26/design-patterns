# frozen_string_literal: true

require 'singleton'

module Singleton
  # create logger with singleton
  class Logger
    attr_accessor :message
    include Singleton

    def add_message(msg)
      message.nil? ? send('message=', [msg]) : message.push(msg)
      self
    end

    def count_log
      message.nil? ? 0 : message.size
    end
  end
end

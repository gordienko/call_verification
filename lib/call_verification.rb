# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require_relative 'call_verification/version'

module CallVerification
  autoload :Client, 'call_verification/client'

  class Error < StandardError; end
  # Your code goes here...
end

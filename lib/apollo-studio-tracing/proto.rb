# frozen_string_literal: true

require_relative 'proto/apollo_pb'

module ApolloStudioTracing
  Trace = ::Mdg::Engine::Proto::Trace
  Node = ::Mdg::Engine::Proto::Trace::Node
  Location = ::Mdg::Engine::Proto::Trace::Location
  Error = ::Mdg::Engine::Proto::Trace::Error
end

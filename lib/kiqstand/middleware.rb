# encoding: utf-8
module Kiqstand

  # This is the middleware for ensuring Moped sessions are diconnected after
  # a worker runs, and that the identity map is cleared.
  class Middleware

    # Ensures that after each worker runs, the identity map is cleared in case
    # it was accidentally enabled in this environment, and each session
    # disconnects it's nodes.
    #
    # @example Execute the worker.
    #   worker.call
    #
    # @param [ Array ] args The arguments for the worker.
    #
    # @since 1.0.0
    def call(*args)
      yield
    ensure
      if defined?(::Mongoid)
        ::Mongoid::IdentityMap.clear
        ::Mongoid.disconnect_sessions
      end
    end
  end
end

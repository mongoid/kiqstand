# encoding: utf-8
module Kiqstand

  # This is the middleware for ensuring the Mongoid identity map is cleared.
  class Middleware

    # Ensures that after each worker runs, the identity map is cleared in case
    # it was accidentally enabled in this environment.
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
      end
    end
  end
end

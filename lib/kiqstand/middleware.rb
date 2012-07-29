# encoding: utf-8
module Kiqstand

  # This is the middleware for ensuring Moped sessions are diconnected after
  # a worker runs.
  class Middleware

    # Ensures that after each worker runs, the identity map is cleared in case
    # it was accidentally enabled in this environment, and each session
    # disconnects it's nodes.
    def call(*args)
      yield
    ensure
      if defined?(::Mongoid)
        ::Mongoid::IdentityMap.clear
        disconnect_sessions
      end
    end

    private

    def disconnect_sessions
      ::Mongoid::Threaded.sessions.each_pair do |_, session|
        session.disconnect
      end
    end
  end
end

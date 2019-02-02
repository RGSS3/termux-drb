require 'drb/drb'

# The URI for the server to connect to
uri="druby://localhost:8787"

module Main
  def self.eval(*args)
    super
  rescue
    $!
  end
end


DRb.start_service(uri, Main)
# Wait for the drb server thread to finish before exiting.
DRb.thread.join
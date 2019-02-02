require 'drb/drb'
require 'irb'
uri = ENV['mobile'] || ARGV[0]
DRb.start_service
puts uri
Remote = DRbObject.new_with_uri(uri)
def reval(*args)
    Remote.eval(*args)
end

IRB.start
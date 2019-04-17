require_relative 'enigma'
require_relative 'creator'

# read_file = ARGV[0]
# write_file = ARGV[1]

# read_file = File.open(read_file, "r")
message = File.open(ARGV[0], "r")

@enigma = Enigma.new

encryption = @enigma.encrypt(message)

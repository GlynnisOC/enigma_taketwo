require_relative 'enigma'
require_relative 'creator'

read_file = ARGV[0]
write_file = ARGV[1]

read_file = File.open(read_file, "r")
message = read_file.read.chomp

@enigma = Enigma.new

encryption = @enigma.encrypt(message)

output = File.open(write_file, "w")
output.write(encryption[:encryption])

class Encrypter
  def initialize(key)
    @key = key
  end

  def encrypt(reader, writer)
    key_index = 0
    until reader.eof?
      clear_char = reader.getc
      encrypted_char = clear_char ^ @key[key_index]
      writer.putc(encrypted_char)
      key_index = (key_index + 1) % @key.size
    end
  end
end
reader = File.open("test.txt")
writer = File.open("dump.txt", "w")
encr = Encrypter.new("my secret key")
encr.encrypt(reader, writer)

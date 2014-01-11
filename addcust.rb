class Customer
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def append_name_to_file(file)
    file << @first_name << "" << @last_name
  end

  def append_song(result, song)
    unless result.respondo_to?(:<<)
      fail TypeError.new('result needs << cap')
    end
    result << song.title << "(" << song.artist << ")"
  end
end
# Implementing File.open

class File
  def self.open(name, mode)
    new(name, mode) unless block_given?
  end
end


class File
  def self.open(name, mode)
    file = new(name, mode)
    return file unless block_given?
    yield(file)
  end
end


class File
  def self.open(name, mode)
    file = new(name, mode)
    return file unless block_given?
    yield(file)
    file.close
  end
end


class File
  def self.open(name, mode)
    file = new(name, mode)
    return file unless block_given?
    yield(file)
  ensure
    file.close
  end
end


File.open("file_open.rb", "r") do |f|
  puts f.path
  puts f.ctime
  puts f.size
end
# file_open.rb
# 2016-11-13 08:32:24 +0800
# 238
# = nil

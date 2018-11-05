require 'pry'
class FileWrite

  def initialize(path, content)
    @path = path
    @content = content
  end

  def write_to_path
    File.write("#{@path}", @content)
    binding.pry
  end

end
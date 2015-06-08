
class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(pair)
    case
    when pair.is_a?(Hash)
      pair.each {|k, v| @entries[k] = v}
    when pair.is_a?(String)
      @entries[pair] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    keywords.include?(keyword)
  end

  def find(keyword)
    temp_storage = {}
    @entries.each{|k, v| temp_storage[k] = v if k.match(keyword)}
    temp_storage
  end

  def printable
    final = ""
    @entries.sort.each do |k, v|
      final += "[#{k}] \"#{v}\"\n"
    end
    final[0..-2]
  end
end
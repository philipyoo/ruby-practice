

class Book
  attr_reader :title

  def title=(str)
    no_cap = %w(the a an and in of)

    if str.include?(' ')
      @title = str.capitalize.split.map{|x| no_cap.include?(x) ? x : x.capitalize}.join(' ')
    else
      @title = str.capitalize
    end

    @title
  end
end
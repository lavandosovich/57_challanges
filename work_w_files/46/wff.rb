

class WordFrequencyFinder
  def self.create(txt)
    @txt = txt
    self.open_file
    self.count_words
    self.show_statistic
  end

  class << self
    def open_file
      @text = File.read(@txt).downcase
    end

    def count_words
      @hash||=Hash.new{0}
      @text.split(" ").each do |word|
        @hash[word.gsub(/[^a-z]/,"")]+=1
      end
    end

    def show_statistic
      stop_list = %w{a the and to of i that in you my is not it with his be have but your our he me for what this all}
      @hash.sort{|one,two| one[1]<=>two[1]}.reverse.to_h.
      each do |key,value|
        puts "#{key}:  (#{value})" if value >= 60 && !stop_list.any? do |word|
          word == key
        end
      end
    end
  end
end




WordFrequencyFinder.create('words.txt')

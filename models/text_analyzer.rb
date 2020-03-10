class TextAnalyzer
    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end

    def count_of_words
        @text.split(" ").count
    end

    def count_of_vowels
        @text.scan(/[aeiou]/).count
    end

    def count_of_consonants
        @text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end

    def most_used_letter
        @text.gsub(/[^a-z]/, '').split('').each_with_object(Hash.new(0)) { |ch, acc| acc[ch] += 1 }.max_by { |k, v| v}
    end

end
class Sopra
  ALPHABET = ("A".."Z").to_a

  def self.decrypt!(string, offset = nil)
    previous_indice = nil

    string.upcase.chars.map do |char|
      indice = ALPHABET.index(char)

      if indice.nil?
        char
      elsif previous_indice
        new_letter_indice = indice - previous_indice
        previous_indice = indice
        ALPHABET[new_letter_indice - 1 + offset.to_i]
      else
        previous_indice = indice
        char
      end
    end.join("")
  end
end

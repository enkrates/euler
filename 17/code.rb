#! /usr/bin/env ruby

# integer_to_words is only built to handle 1-1000, as the euler problem requires

def integer_to_words integer
  if integer == 1000
    return "one thousand"
  elsif integer >= 100
    hundreds = integer/100
    tens = (integer%100)/10
    ones = (integer%100)%10
  elsif integer >= 10
    hundreds = 0
    tens = integer/10
    ones = integer%10
  else
    hundreds = 0
    tens = 0
    ones = integer
  end
  
  words = ''
  
  if hundreds > 0
    case hundreds
      when 1
        words += "one"
      when 2
        words += "two"
      when 3
        words += "three"
      when 4
        words += "four"
      when 5
        words += "five"
      when 6
        words += "six"
      when 7
        words += "seven"
      when 8
        words += "eight"
      when 9
        words += "nine"
    end
    words += " hundred"
    if (tens > 0) || (ones > 0)
      words += " and "
    end
  end
  
  if tens == 1
    case ones
      when 0
        words += "ten"
      when 1
        words += "eleven"
      when 2
        words += "twelve"
      when 3
        words += "thirteen"
      when 4
        words += "fourteen"
      when 5
        words += "fifteen"
      when 6
        words += "sixteen"
      when 7
        words += "seventeen"
      when 8
        words += "eighteen"
      when 9
        words += "nineteen"
    end
  else
  
    if tens > 1
      case tens
        when 2
          words += "twenty"
        when 3
          words += "thirty"
        when 4
          words += "forty"
        when 5
          words += "fifty"
        when 6
          words += "sixty"
        when 7
          words += "seventy"
        when 8
          words += "eighty"
        when 9
          words += "ninety"
      end
      if ones > 0
        words += "-"
      end
    end
    
    if ones > 0
      case ones
        when 1
          words += "one"
        when 2
          words += "two"
        when 3
          words += "three"
        when 4
          words += "four"
        when 5
          words += "five"
        when 6
          words += "six"
        when 7
          words += "seven"
        when 8
          words += "eight"
        when 9
          words += "nine"
      end
    end
    
  end
  
  return words
  
end

def count_letters_in_word word
  word.gsub!(/[ -]/, '')
  return word.length
end

sum = 0

for i in 1..1000 do
  sum += count_letters_in_word(integer_to_words(i))
end

puts sum

def welcome
    puts 'Please select an option.'
    puts '1) Input a sentence'
    puts '2) Exit'

    answer = gets.chomp

    if answer == '1'
        get_string
    elsif answer == '2'
        puts 'Goodbye'
        exit
    else 
        puts 'Invalid response, try again'
        welcome
    end

end


def get_string

    puts "Please enter a sentence"

    answer = gets.chomp
    word = select_word(answer)

    if word.length > 1
        puts "There are two anwers #{word}"
    else
        puts "The word with the most letters is '#{word[0]}'"
    end
    welcome

end

def select_word(str)

    words = str.split(' ')
    hashList = {} 
    
    words.each do |word |
        number = word.chars.group_by { |char|  char }.map{ |char,array| array.size }.max
        hashList[word] = number
    end
    
    totalNumber = hashList.values.max
    arr = []
  
    hashList.each do |k, v|
        if v == 2
            puts k
            arr << k
        end
        arr
    end
   
    arr

end


welcome

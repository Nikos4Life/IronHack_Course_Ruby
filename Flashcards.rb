class FlashCard
  attr_accessor :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def question_and_answer(index = nil)
      if @answer == ""
          return
      end       
      puts " #{index} #{@question}"
      input = ''
      while input != @answer
          input = gets.chomp
          # puts "YOU ARE DOING IT BRONG!"
      end
      puts @answer
  end
end

def display_cards(cards)
    cards.each_with_index do | card, index |
        card.question_and_answer(index+1)
    end
end

# card0 = FlashCard.new("What does the array.each method do", "Iterates through each element in the array and performs an operation on them")
# card01 = FlashCard.new("How much wood could a wood chuck chuck if a wood chuck could chuck wood", "42")
# card1 = FlashCard.new("What does the array.each_with_index method do", "Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each().")
# card2 = FlashCard.new("What does the array.map method do", "Map returns a new array with the results of running a block once for every element in enum. Again, the original is left untouched.")
# card5 = FlashCard.new("What does the array.select method do", "With select you can extract only the values you want from an Array and get a new array. The original is left untouched.")
# card02 = FlashCard.new("What is my favorite food", "Whiskey")
# card3 = FlashCard.new("What does the array.reduce method do", "Reduce (aka \"inject\") transforms a Collection into a single value, resulting from applying a function recursively to each element in the collection.")
# card03 = FlashCard.new("Why is the sky blue", "Because, science.")

card0 = FlashCard.new("What does the array.each method do", "0")
card01 = FlashCard.new("How much wood could a wood chuck chuck if a wood chuck could chuck wood", "1")
card1 = FlashCard.new("What does the array.each_with_index method do", "2")
card2 = FlashCard.new("What does the array.map method do", "3")
card5 = FlashCard.new("What does the array.select method do", "4")
card02 = FlashCard.new("What is my favorite food", "5")
card3 = FlashCard.new("What does the array.reduce method do", "6")
card03 = FlashCard.new("Why is the sky blue", "7")
card_list = [card0, card01, card1, card02, card2, card3, card03, card5]


new_card_list = card_list.select{|card| card.question.include?("array")}.map{|card| FlashCard.new(card.question+"?", card.answer)} 

# card0.question_and_answer(1)
# puts(new_card_list.shuffle)
display_cards(new_card_list.shuffle)
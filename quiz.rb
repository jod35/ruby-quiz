#lets create a question

class Question
    attr_accessor :prompt,:answer

    def initialize(prompt,answer)
        @prompt=prompt
        @answer=answer
    end
end

p1="What color is apples?\n(a)Gray\n(b)Purple\n(c)Red"

p2="What is the capital city of Uganda?\n(a)Seoul\n(b)Kampala\n(c)Nairobi"

p3="At what age is one an adult?\n(a)18\n(b)23\n(c)25"

questions=[
    Question.new(p1,"c"),
    Question.new(p2,"b"),
    Question.new(p3,"a")
]

def run_test(questions)
  answer=""

  score=0

  for question in questions
    puts question.prompt

    answer =gets.chomp()

    if answer == question.answer
        score+=1
    end
  end

  puts "You got #{score} out of #{questions.length()}"
end

run_test(questions)
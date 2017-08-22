
file_name ="options.txt"
output = File.open( "script1.rb", "w+" )
count = 0
File.open(file_name).each do |line|
output << "option = Option.new\n"
output << "option.option_text = \"#{line.strip}\"\n"
output << "option.value = #{count}\n"
output << "option.question = question\n"
output << "option.save!\n"
count = count - 5
end 
output.close



question = Question.new
question.question_title = "S1. Do you have swelling in your knee?"
question.category = "Symptoms - These questions should be answered thinking of your knee symptoms during the last week."
option = Option.new 
option.option_text = "Never"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Rarely"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Sometimes"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Often"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Always"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


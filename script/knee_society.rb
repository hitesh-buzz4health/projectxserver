
#--------------------------- Knee Injury and Osteoarthritis Outcome Score(KOOS) ------------------------------------------------#
score = Score.new 
score.type_of_score = "Knee Society Score"
score.anatomy = "Knee"
question = Question.new
question.question_title = "Q1.Pain"
question.category = "Part 1 - Knee Score"
option = Option.new 
option.option_text = "None"
option.value = 50
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild / Occasional"
option.value = 45
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild (Stairs only)"
option.value = 40
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild (Walking and Stairs)"
option.value = 30
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate - Occasional"
option.value = 20
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 20
option.question = question
option.save!
question.score = score 
question.save!





#------------------------------------------------------------------------------------------------------#


question = Question.new
question.question_title = "Q2.Flexion Contracture (if present)"
question.category = "Part 1 - Knee Score"
option = Option.new 
option.option_text = "5°-10°"
option.value = -2
option.question = question
option.save!
option = Option.new 
option.option_text = "10°-15°"
option.value = -5
option.question = question
option.save!
option = Option.new 
option.option_text = "16°-20°"
option.value = -10
option.question = question
option.save!
option = Option.new 
option.option_text = ">20°"
option.value = -15
option.question = question
option.save!
question.score = score 
question.save!






question = Question.new
question.question_title = "Q3.Extension lag"
question.category = "Part 1 - Knee Score"
option = Option.new 
option.option_text = "<10°"
option.value = -5
option.question = question
option.save!
option = Option.new
option.option_text = "10-20°"
option.value = -10
option.question = question
option.save!
option = Option.new 
option.option_text = ">20°"
option.value = -15
option.question = question
option.save!
question.score = score 
question.save!




#------------------------------------------------------------------------------------------------------#


question = Question.new
question.question_title = "Q4.Total Range of Flexion"
question.category = "Part 1 - Knee Score"
option = Option.new
option.option_text = "0-5"
option.value = 1
option.question = question
option.save!
option = Option.new
option.option_text = "6-10"
option.value = 2
option.question = question
option.save!
option = Option.new
option.option_text = "11-15"
option.value = 3
option.question = question
option.save!
option = Option.new
option.option_text = "16-20"
option.value = 4
option.question = question
option.save!
option = Option.new
option.option_text = "21-25"
option.value = 5
option.question = question
option.save!
option = Option.new
option.option_text = "26-30"
option.value = 6
option.question = question
option.save!
option = Option.new
option.option_text = "31-35"
option.value = 7
option.question = question
option.save!
option = Option.new
option.option_text = "36-40"
option.value = 8
option.question = question
option.save!
option = Option.new
option.option_text = "41-45"
option.value = 9
option.question = question
option.save!
option = Option.new
option.option_text = "46-50	 	 	 	 	 		 	 	 	 "
option.value = 10
option.question = question
option.save!
option = Option.new
option.option_text = "51-55"
option.value = 11
option.question = question
option.save!
option = Option.new
option.option_text = "56-60"
option.value = 12
option.question = question
option.save!
option = Option.new
option.option_text = "61-65"
option.value = 13
option.question = question
option.save!
option = Option.new
option.option_text = "66-70"
option.value = 14
option.question = question
option.save!
option = Option.new
option.option_text = "71-75"
option.value = 15
option.question = question
option.save!
option = Option.new
option.option_text = "76-80"
option.value = 16
option.question = question
option.save!
option = Option.new
option.option_text = "81-85"
option.value = 17
option.question = question
option.save!
option = Option.new
option.option_text = "86-90"
option.value = 18
option.question = question
option.save!
option = Option.new
option.option_text = "91-95"
option.value = 19
option.question = question
option.save!
option = Option.new
option.option_text = "96-100"
option.value = 20
option.question = question
option.save!
option = Option.new
option.option_text = "101-105"
option.value = 21
option.question = question
option.save!
option = Option.new
option.option_text = "106-110"
option.value = 22
option.question = question
option.save!
option = Option.new
option.option_text = "111-115"
option.value = 23
option.question = question
option.save!
option = Option.new
option.option_text = "116-120"
option.value = 24
option.question = question
option.save!
option = Option.new
option.option_text = "121-125"
option.value = 25
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------------------#
question = Question.new
question.question_title = "Q5.Alignment (Varus & Valgus)"
question.category = "Part 1 - Knee Score"
option = Option.new
option.option_text = "0"
option.value = -15
option.question = question
option.save!
option = Option.new
option.option_text = "1"
option.value = -12
option.question = question
option.save!
option = Option.new
option.option_text = "2"
option.value = -9
option.question = question
option.save!
option = Option.new
option.option_text = "3"
option.value = -6
option.question = question
option.save!
option = Option.new
option.option_text = "4"
option.value = -3
option.question = question
option.save!
option = Option.new
option.option_text = "5 - 10"
option.value = 0
option.question = question
option.save!
option = Option.new
option.option_text = "11"
option.value = -3
option.question = question
option.save!
option = Option.new
option.option_text = "12"
option.value = -6
option.question = question
option.save!
option = Option.new
option.option_text = "13"
option.value = -9
option.question = question
option.save!
option = Option.new
option.option_text = "14"
option.value = -12
option.question = question
option.save!
option = Option.new
option.option_text = "15"
option.value = -15
option.question = question
option.save!
option = Option.new
option.option_text = "Over 15°"
option.value = -20
option.question = question
option.save!
question.score = score 
question.save!



#-------------------------------------------------------------------#

question = Question.new
question.question_title = "Q6.Stability (Maximum movement in any position) for Antero-posterior"
question.category = "Part 1 - Knee Score"
option = Option.new
option.option_text = "<5mm"
option.value = 10
option.question = question
option.save!
option = Option.new
option.option_text = "5-10mm"
option.value = 5
option.question = question
option.save!
option = Option.new
option.option_text = "10+mm"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#---------------------------------------------------------------------------------------#

question = Question.new
question.question_title = "Q7.Mediolateral"
question.category = "Part 1 - Knee Score"
option = Option.new
option.option_text = "<5°"
option.value = 15
option.question = question
option.save!
option = Option.new
option.option_text = "6-9°"
option.value = 10
option.question = question
option.save!
option = Option.new
option.option_text = "10-14°"
option.value = 5
option.question = question
option.save!
option = Option.new
option.option_text = "15°"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#-----------------------------------------------------#


question = Question.new
question.question_title = "Q1.Walking"
question.category = "Part 2 - Function"
option = Option.new
option.option_text = "Unlimited"
option.value = 50
option.question = question
option.save!
option = Option.new
option.option_text = ">10 blocks"
option.value = 40
option.question = question
option.save!
option = Option.new
option.option_text = "5-10 blocks"
option.value = 30
option.question = question
option.save!
option = Option.new
option.option_text = "<5 blocks"
option.value = 20
option.question = question
option.save!
option = Option.new
option.option_text = "Housebound"
option.value = 10
option.question = question
option.save!
option = Option.new
option.option_text = "Unable"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#--------------------------------------------------------------#

question = Question.new
question.question_title = "Q2.Stairs"
question.category = "Part 2 - Function"
option = Option.new
option.option_text = "Normal Up and down"
option.value = 50
option.question = question
option.save!
option = Option.new
option.option_text = "Normal Up down with rail"
option.value = 40
option.question = question
option.save!
option = Option.new
option.option_text = "Up and down with rail"
option.value = 30
option.question = question
option.save!
option = Option.new
option.option_text = "Up with rail, down unable"
option.value = 15
option.question = question
option.save!
option = Option.new
option.option_text = "Unable"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#---------------------------------------------------------------------#
question = Question.new
question.question_title = "Q3.Walking aids used"
question.category = "Part 2 - Function"
option = Option.new
option.option_text = "None used"
option.value = 0
option.question = question
option.save!
option = Option.new
option.option_text = "Use of Cane/Walking stick deduct"
option.value = -5
option.question = question
option.save!
option = Option.new
option.option_text = "Two Canes/sticks"
option.value = -10
option.question = question
option.save!
option = Option.new
option.option_text = "Crutches or frame"
option.value = -20
option.question = question
option.save!
question.score = score 
question.save!



score.save!
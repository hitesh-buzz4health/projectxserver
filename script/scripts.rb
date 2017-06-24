	user = User.find("59256bdb3634ee538fb95b2a")
(0..10).each do |i|
patient_name = ["sonal" ,"salman" , "tushar" , "sheerin"].sample
patient = Patient.new 
patient.name = patient_name
patient.sex = "male"
patient.users << user
patient.save!
(0..10).each do |i|
date = ["2017-5-18","2016-4-15" ,"2017-4-15","2014-3-10","2012-4-5","2007-2-19","2001-7-20","2004-4-15","2004-8-15","1996-5-15","2017-5-15","2017-11-19" ,"2017-3-10"].sample
surgery = Surgery.new 
surgery.date_of_surgery = Date.parse(date)
surgery.type_of_surgery ="Total Knee Placement"
surgery.patient = patient
diagnosis = Diagnosis.new 
diagnosis.patient = patient
diagnosis.diagnosis_outcome = ["knee replacement" , "Total Knee replacement","Replacement"].sample
diagnosis.save!
surgery.diagnosis = diagnosis
surgery.surgical_approach = SurgicalApproach.first
surgery.save!
end 
end 


# ----------------------############################################---------------------------------------
user = User.find("59256bdb3634ee538fb95b2a")
patient_ids = Patient.where(:user_ids => user.id)
score = Score.first
patient_ids.each do |patient|
(0..10).each do |i|
secure_score = SecureScore.new 
secure_score.patient_score = [34,44,32,11,21,54,43,76,37].sample
secure_score.score_date = ["2017-5-18","2016-4-15" ,"2017-4-15","2014-3-10","2012-4-5","2007-2-19","2001-7-20","2004-4-15","2004-8-15","1996-5-15","2017-5-15","2017-11-19" ,"2017-3-10"].sample
secure_score.patient = patient
secure_score.score = score
score.questions.each do | question|
answer = Answer.new
answer.secure_score = secure_score
answer.question = question
answer.option = question.options.sample
answer.save!
end 
secure_score.save!

end 
end


#------------------------------------------------------

#---------------------------------------------------------------------------#
score = Score.new 
score.type_of_score = "Oxford Knee Score"
score.anatomy = "Knee"
question = Question.new
question.question_title = "1. How would you describe the pain you usually have in your knee?"
option = Option.new 
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Very mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!
#-----------------------second question ------------------#

question = Question.new
question.question_title = "2. Have you had any trouble washing and drying yourself (all over) because of your knee?"
option = Option.new 
option.option_text = "No trouble at all"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Very little trouble"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate trouble"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme difficulty"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Impossible to do"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#------------------------------third question ------------------------------#

question = Question.new
question.question_title = "3.Have you had any trouble getting in and out of the car or using public transport because of your knee? (With or without a stick)"
option = Option.new 
option.option_text = "No trouble at all"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Very little trouble"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate trouble"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme difficulty"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Impossible to do"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-----------------------------------------fourth question --------------------------------------#

question = Question.new
question.question_title = "4. For how long are you able to walk before the pain in your knee becomes s eve re? (With or without a stick)"
option = Option.new 
option.option_text = "No pain > 60 min"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "16 - 60 minutes"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "5 - 15 minutes"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Around the house only"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Not at all - severe on walking"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#----------------------------------------fifth question ----------------------------------------------------#

question = Question.new
question.question_title = "5. After a meal (sat at a table), how painful has it been for you to stand up from a chair because of your knee? "
option = Option.new 
option.option_text = "Not at all painful"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Slightly painful"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderately pain"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Very painful"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Unbearable"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#----------------------------------------sixth question ----------------------------------------------------#

question = Question.new
question.question_title = "6. Have you been limping when walking, because of your knee?"
option = Option.new 
option.option_text = "Not at all painful"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Slightly painful"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderately pain"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Very painful"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Unbearable"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#----------------------------------------seventh question ----------------------------------------------------#

question = Question.new
question.question_title = "7. Could you kneel down and get up again afterwards?"
option = Option.new 
option.option_text = "Yes, easily"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "With little difficulty"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "With moderate difficulty"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "With extreme difficulty"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "No, impossible"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#--------------------------------eight question --------------------------------------------------------------------------#

question = Question.new
question.question_title = "8. Are you troubled by pain in your knee at night in bed?"
option = Option.new 
option.option_text = "Not at all"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "With little difficulty"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Some nights"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Most nights"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Every night"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#------------------------------------------ninth question - -------------------------------------------------------------------------#
question = Question.new
question.question_title = "9. How much has pain from your knee interfered with your usual work? (including housework)"
option = Option.new 
option.option_text = "Not at all"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "A little bit"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderately"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Greatly"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Totally"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#------------------------------------------ninth question - -------------------------------------------------------------------------#

question = Question.new
question.question_title = "9. How much has pain from your knee interfered with your usual work? (including housework)"
option = Option.new 
option.option_text = "Not at all"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "A little bit"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderately"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Greatly"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Totally"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#---------------------------------tenth question ----------------------------------------------------#

question = Question.new
question.question_title = "10. Have you felt that your knee might suddenly ï¿½give awayï¿½ or let you down?"
option = Option.new 
option.option_text = "Rarely / Never"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Sometimes or just at first"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Often, not at first"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Most of the time"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "All the time"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#----------------------------------------Eleventh question ---------------------------------------------------------------------------#

question = Question.new
question.question_title = "11. Could you do household shopping on your own?"
option = Option.new 
option.option_text = "Yes, easily"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "With little difficulty"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "With moderate difficulty"
option.question = question
option.save!
option = Option.new 
option.option_text = "With extreme difficulty"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "No, impossible"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#------------------------------------------------------Tweleth question --------------------------------------------------#

	 
question = Question.new
question.question_title = "12. Could you walk down a flight of stairs?"
option = Option.new 
option.option_text = "Yes, easily"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "With little difficulty"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "With moderate difficulty"
option.question = question
option.save!
option = Option.new 
option.option_text = "With extreme difficulty"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "No, impossible"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


score.save!
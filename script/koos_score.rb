#--------------------------- Knee Injury and Osteoarthritis Outcome Score(KOOS) ------------------------------------------------#
score = Score.new 
score.type_of_score = "Knee Injury and Osteoarthritis Outcome Score(KOOS)"
score.anatomy = "Knee"
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


#--------------------------------second question --------------------------------#


question = Question.new
question.question_title = "S2. Do you feel grinding, hear clicking or any other type of noise when your knee moves?"
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


#---------------------third question -------------#


question = Question.new
question.question_title = "S3. Does your knee catch or hang up when moving?"
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






question = Question.new
question.question_title = "S4. Can you straighten your knee fully?"
question.category = "Symptoms - These questions should be answered thinking of your knee symptoms during the last week."
option = Option.new 
option.option_text = "Always"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Often"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Sometimes"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Rarely"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Never"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#-----------------5-------------------#



question = Question.new
question.question_title = "S5. Can you bend your knee fully ?"
question.category = "Symptoms - These questions should be answered thinking of your knee symptoms during the last week."
option = Option.new 
option.option_text = "Always"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Often"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Sometimes"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Rarely"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Never"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!





#----------------------------6----------------#


question = Question.new
question.question_title = "S6. How severe is your knee joint stiffness after first wakening in the morning?"
question.category = "Stiffness - The following questions concern the amount of joint stiffness you have experienced during the last week in your knee. Stiffness is a sensation of restriction or slowness in the ease with which you move your knee joint."
option = Option.new 
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!




#--------------------7-----------------------#

question = Question.new
question.question_title = "S7. How severe is your knee stiffness after sitting, lying or resting later in the day?"
question.category = "Stiffness - The following questions concern the amount of joint stiffness you have experienced during the last week in your knee. Stiffness is a sensation of restriction or slowness in the ease with which you move your knee joint."
option = Option.new 
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#----------------------8-------------------------#


question = Question.new
question.question_title = "P1. How often do you experience knee pain?"
question.category = "Pain"
option.option_text = "Never"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Monthly"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Weekly"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Daily"
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




#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P2. What amount of knee pain have you experienced the last week during Twisting/pivoting on your knee ?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P3. What amount of knee pain have you experienced the last week during Straightening knee fully ?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P4. What amount of knee pain have you experienced the last week during  Bending knee fully?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P5. What amount of knee pain have you experienced the last week during Walking on flat surface ?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P6. What amount of knee pain have you experienced the last week during Going up or down stairs ?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!




#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P7. What amount of knee pain have you experienced the last week during At night while in bed ?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!







#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P8. What amount of knee pain have you experienced the last week during Sitting or lying?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!






#-----------------------------------------------------------------------#

question = Question.new
question.question_title = "P9. What amount of knee pain have you experienced the last week during Standing upright?"
question.category = "Pain"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!




#-------------------------------------------#####


question = Question.new
question.question_title = "Al. Descending stairs"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A2. Ascending stairs"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-------------------------------------------#####


question = Question.new
question.question_title = "A3. Rising from sitting"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#-------------------------------------------#####


question = Question.new
question.question_title = "A4. Standing"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#-------------------------------------------#####


question = Question.new
question.question_title = "A5. Bending to floor/pick up an object"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A6. Walking on flat surface"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-------------------------------------------#####


question = Question.new
question.question_title = "A7. Getting in/out of car"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A8. Going shopping"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-------------------------------------------#####


question = Question.new
question.question_title = "A9. Putting on socks/stockings"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A10. Rising from bed"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A11. Taking off socks/stockings"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A12. Lying in bed (turning over, maintaining knee position)"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A13. Getting in/out of bath"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-------------------------------------------#####


question = Question.new
question.question_title = "A14. Sitting"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-------------------------------------------#####


question = Question.new
question.question_title = "A15. Getting on/off toilet"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A16. Heavy domestic duties (moving heavy boxes, scrubbing floors, etc)"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "A17. Light domestic duties (cooking, dusting, etc)"
question.category = "Function, daily living - The following questions concern your physical function. By this we mean your ability to move around and to look after yourself. For each of the following activities please indicate the degree of difficulty you have experienced in the last week due to your knee"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 1
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!
	



#-------------------------------------------#####


question = Question.new
question.question_title = "SP1. Squatting"
question.category = "Function, sports and recreational activities - The following questions concern your physical function when being active on a higher level. The questions should be answered thinking of what degree of difficulty you have experienced during the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!
	
#-------------------------------------------#####


question = Question.new
question.question_title = "SP2. Running"
question.category = "Function, sports and recreational activities - The following questions concern your physical function when being active on a higher level. The questions should be answered thinking of what degree of difficulty you have experienced during the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "SP3. Jumping"
question.category = "Function, sports and recreational activities - The following questions concern your physical function when being active on a higher level. The questions should be answered thinking of what degree of difficulty you have experienced during the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "SP4. Twisting/pivoting on your injured knee"
question.category = "Function, sports and recreational activities - The following questions concern your physical function when being active on a higher level. The questions should be answered thinking of what degree of difficulty you have experienced during the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!

#-------------------------------------------#####


question = Question.new
question.question_title = "SP5. Kneeling"
question.category = "Function, sports and recreational activities - The following questions concern your physical function when being active on a higher level. The questions should be answered thinking of what degree of difficulty you have experienced during the last week due to your knee."
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderate"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!


#-------------------------------------------#####


question = Question.new
question.question_title = "Q1. How often are you aware of your knee problem?"
question.category = "Quality of Life"
option.option_text = "Never"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Monthly"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Weekly"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Daily"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Constantly"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#-------------------------------------------#####


question = Question.new
question.question_title = "Q2. Have you modified your life style to avoid potentially damaging activities to your knee?"
question.category = "Quality of Life"
option.option_text = "Not at all"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mildly"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderately"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severely"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Totally"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



#-------------------------------------------#####


question = Question.new
question.question_title = "Q3. How much are you troubled with lack of confidence in your knee?"
question.category = "Quality of Life"
option.option_text = "Not at all"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mildly"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderately"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severely"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Extremely"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!







#-------------------------------------------#####


question = Question.new
question.question_title = "Q4. In general, how much difficulty do you have with your knee?"
question.category = "Quality of Life"
option.option_text = "None"
option.value = 4
option.question = question
option.save!
option = Option.new 
option.option_text = "Mild"
option.value = 3
option.question = question
option.save!
option = Option.new 
option.option_text = "Moderately"
option.value = 2
option.question = question
option.save!
option = Option.new 
option.option_text = "Severe"
option.value = 
option.question = question
option.save!
option = Option.new 
option.option_text = "Extreme"
option.value = 0
option.question = question
option.save!
question.score = score 
question.save!



score.save!
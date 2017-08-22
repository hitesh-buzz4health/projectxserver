Answer.all.delete
Diagnosis.all.delete
KneeImplant.all.delete
MedicalImage.all.delete
Option.all.delete
Patient.all.delete
Preference.all.delete
Question.all.delete
Score.all.delete
SecureScore.all.delete
Surgery.all.delete
SurgicalApproach.all.delete
UidType.all.delete
User.all.delete


#---------script for impalnt---------------------#

brand_of_implants = ["Nexgen" , "Genesis" , "Scorpio" , "Freedom"]

type_of_implants  = ["PS", "CR", "Constrained" ,"Rotating"]

tibia_types = ["Modular" ,"Mono Block"]
tibia_bearings = ["Fixed", "Mobile"]
patella_resurfaceds =[true , false]
tibia_stems = [true , false]
femur_stems = [true , false ]
side_of_implant =  ["left","right"]
#------------------------------+
brand_of_implants.each do |brand_of_implant|
type_of_implants.each do |type_of_implant|
tibia_types.each do |tibia_type|
tibia_bearings.each do|tibia_bearing|
patella_resurfaceds.each do |patella_resurfaced|
tibia_stems.each do |tibia_stem|
femur_stems.each do |femur_stem|
side_of_implant.each do |side|
implant = KneeImplant.new 
implant.brand_name = brand_of_implant
implant.type_of_implant = type_of_implant
implant.side_implant_used = side
implant.tibia_type = tibia_type
implant.tibia_bearing = tibia_bearing
implant.patella_resurfaced = patella_resurfaced
implant.tibia_stem = tibia_stem
implant.femur_stem = femur_stem

implant.save!
end 
end
end  
end 
end 
end
end
end 


name_of_surgical_approach = ["Medial Parapatellar","Sub Vastus" , "Mid Vastus"]
name_of_surgical_approach.each do | item |

 surgical_approach = SurgicalApproach.new
 surgical_approach.name = item
 surgical_approach.surgery_type = "Knee"
 surgical_approach.save!


end 



#----------------------unique id list ------------------------------------#

name_of_uid_type = ["Aadhaar Card" , "Hospital Id"]
name_of_uid_type.each do |item|
uid_type = UidType.new 
uid_type.name = item
uid_type.save!

end 




#-----------creating user -------------# 

user = User.first
user.name = "Orhto Beta"
user.email = "sonal@buzz4health.com"
user.password = "buzz4health"
user.license_no = "Dlmsq"
user.practising_area_name = "Aiims"
user.save!








user = User.first
(0..10).each do |i|
patient_name = ["sonal" ,"salman" , "tushar" , "sheerin"].sample
patient = Patient.new 
patient.name = patient_name
patient.sex = ["male", "female"].sample
patient.age = [22,23,25,33,34,35,44,45,46,51,53,54,55,61,63,67,68,71,72,74,78].sample
patient.users << user
patient.save!
(0..10).each do |i|
date = ["2017-5-18","2016-4-15" ,"2017-4-15","2014-3-10","2012-4-5","2007-2-19","2001-7-20","2004-4-15","2004-8-15","1996-5-15","2017-5-15","2017-11-19" ,"2017-3-10"].sample
surgery = Surgery.new 
surgery.date_of_surgery = Date.parse(date)
surgery.type_of_surgery ="Total Knee Placement"
surgery.user = user 
surgery.nature_of_surgery = ["Revision" , "Primary"].sample
surgery.patient = patient
diagnosis = Diagnosis.new 
diagnosis.patient = patient
diagnosis.diagnosis_outcome = ["knee replacement" , "Total Knee replacement","Replacement"].sample
diagnosis.save!
surgery.diagnosis = diagnosis
surgery.surgical_approach = SurgicalApproach.all.sample
surgery.save!
end 
end 


# ----------------------############################################---------------------------------------
user = User.first
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









#-------updating implant -----------#
count = 0
implants = KneeImplant.all
surgeries = Surgery.all
surgeries.each do |surgery|

if count < 5
surgery.knee_implants << implants.sample
surgery.surgery_for = ["Left","Right"].sample
count += 1
puts "count: " +count.to_s
else
implant = implants.sample(2)
surgery.surgery_for = "Bilateral"
surgery.knee_implants << implants.sample(2)
puts"multiple implants"
count = 0 
end 
	
surgery.save!
puts "surgery saved"
end 

p



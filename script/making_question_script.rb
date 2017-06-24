require 'file'

File.open('oxford_knee_score.txt').each do |line|

 
 if line.contains"?"
   puts line
 end 

end 
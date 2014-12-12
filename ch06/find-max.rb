# find-max.rb
# 2013-12-25
# Find the max test score.
#

# Names of students
student_name = ["Geraldo", "Brittany", "Michael"]

# Test scores
test_score = [
    [73, 98, 86, 61, 96],
    [60, 90, 96, 92, 77],
    [44, 50, 99, 65, 10]
]

# Hold the indexes of the student with the max test score
# max = [0, 0]
max = ["", 0]
ST = 0
SC = 1

# Indexes to arrays
student = 0
score = 0

while (student < student_name.length)
    while (score < test_score.length)
	if test_score[student][score] > max[SC]
	    #max[ST] = student
	    #max[SC] = score
	    max[ST] = student_name[student]
	    max[SC] = test_score[student][score]
	end
	score += 1
    end
    score = 0
    student += 1
end

puts "Student with the highest test score: "
#puts student_name[max[ST]] + ": #{test_score[max[ST]][max[SC]]}"
puts max[ST] + ": #{max[SC]}"

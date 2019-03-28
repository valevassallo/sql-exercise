require "faker"

Faker::Config.locale = 'es'

# This first:

ing_kind = ["Aeroespacial", "Química", "Civil", "Mecánica", "Producción", "Biomédica", "Sistemas", "Ambiental", "Mecatrónica", "Eléctrica", "Agrícola"]
file = File.open("students.txt", "w")
1000.times { file.puts "INSERT INTO Students(\"name\", \"speciality\") VALUES ('#{Faker::Name.unique.name}', '#{ing_kind.sample}');" }

# This after:

sections = ("U".."X")
file2 = File.open("registration.txt", "a+")

course = rand(1..10)
case course
when 1, 9
    b = 1
when 2
    b = 2
when 3, 5
    b = 3
when 4
    b = 4
when 6
    b = 5
when 7, 8
    b = 7
when 10
    b = 6
end

2000.times {file2.puts "INSERT INTO Registration(\"student_id\", \"course_id\", \"prof_id\", \"section\") VALUES ('#{rand(1..1002)}', '#{course}', '#{b}', '#{sections.to_a.sample});"}

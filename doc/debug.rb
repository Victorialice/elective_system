user = User.find 2

arr = []
user.courses.each do |c|
  appointment = Appointment.find_by_user_id_and_course_id(user.id, c.id)
  arr << appointment.id if appointment
end
puts arr.size




  appointment = Appointment.find_by_user_id_and_course_id(user.id, c.id)

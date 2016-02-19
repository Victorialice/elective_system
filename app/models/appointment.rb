class Appointment < ActiveRecord::Base
  belongs_to :course
  belongs_to :user

  def add_course(course_id)
    current_course = Course.find_by(course_id: course_id)
    if current_course
      current_course.quantity += 1
    else
    current_course = Course.build(course_id: course_id)
    end
    current_course
end
end

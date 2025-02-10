module Runable
  def run
    puts 'Running from runable'
  end
end

module Walkable
  def walk
    puts 'walking from walkable'
  end
end

class Athelate
  include runable
  include walkable

  def sleep
    puts 'sleeping fromath'
  end
end
athe = Athlete.new
athe.run
athe.walk
athe.sleep


Problem Overview
Students can enroll in multiple courses.
Teachers can teach multiple courses.
A Course can have multiple students and be taught by one or more teachers.

Students : student_id,
Teachers : id
Student_courses: student_id,course_id
teacher courses: course_id, teacher_id
Course : id, student_id, teacher_id


def show

  unless current_customer.present?
    render json: { error: 'Unauthorized: Customer not found' }, status: :unauthorized and return
  end
  render json: {sucess: "good to go"}
end
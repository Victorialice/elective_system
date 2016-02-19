rails generate model Course name:string number:string 
rails generate model Course_Student article:references
rake db:migrate:down VERSION=
rails generate migration CreateJoinTableCourseStudent course_id student_id 
rails generate model appointment course_id:integer user_id:integer course:references user:references

class CreateScheduleCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_courses do |t|
      t.integer :schedule_id
      t.integer :course_id
    end
  end
end

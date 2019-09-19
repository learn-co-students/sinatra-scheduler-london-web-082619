class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :professor
      t.integer :credits
    end

    create_table :schedules do |t|
      t.string :student
    end

    create_table :course_schedules do |t|
      t.integer :course_id
      t.integer :schedule_id
    end
  end
end

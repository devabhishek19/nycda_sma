class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :status

      t.timestamps null: false
    end
  end
end

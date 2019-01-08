class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fName
      t.string :lName
      t.integer :age
      t.string :education

      t.timestamps
    end
  end
end

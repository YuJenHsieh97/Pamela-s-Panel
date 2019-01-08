class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :fName
      t.string :lName
      t.integer :age
      t.integer :salary
      t.string :education

      t.timestamps
    end
  end
end

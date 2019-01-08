class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :sDate
      t.string :eDate

      t.timestamps
    end
  end
end

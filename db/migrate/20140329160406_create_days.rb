class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :dayOfTheWeek
      t.integer :date
      t.string :month
      t.integer :year
      t.string :thingOne
      t.string :thingTwo
      t.string :thingThree

      t.timestamps
    end
  end
end

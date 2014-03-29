class CreateThreeGoodThings < ActiveRecord::Migration
  def change
    create_table :three_good_things do |t|
      t.string :1
      t.string :2
      t.string :3

      t.timestamps
    end
  end
end

class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name
      t.boolean :chocolate
      t.boolean :puppies
      t.boolean :cold_hard_cash
      t.boolean :rainbows

      t.timestamps null: false
    end
  end
end

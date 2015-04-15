class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.integer :user_id
      t.string :certifications

      t.timestamps null: false
    end
  end
end

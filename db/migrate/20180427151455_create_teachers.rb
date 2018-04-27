class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :lastName
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end

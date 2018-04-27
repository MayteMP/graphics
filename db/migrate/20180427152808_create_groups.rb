class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.references :teacher, foreign_key: true
      t.references :matter, foreign_key: true
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end

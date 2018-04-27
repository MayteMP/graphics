class CreateMatters < ActiveRecord::Migration[5.0]
  def change
    create_table :matters do |t|
      t.string :name
      t.integer :credits

      t.timestamps
    end
  end
end

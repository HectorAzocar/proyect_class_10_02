class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :status
      t.date :initial_date
      t.date :finish_date

      t.timestamps
    end
  end
end

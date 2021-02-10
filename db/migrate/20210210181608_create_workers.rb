class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :name
      t.belongs_to :work, foreign_key: true

      t.timestamps
    end
  end
end

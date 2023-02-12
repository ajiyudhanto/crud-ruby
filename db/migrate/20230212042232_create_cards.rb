class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end

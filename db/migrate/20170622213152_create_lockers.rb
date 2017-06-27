class CreateLockers < ActiveRecord::Migration[5.1]
  def change
    create_table :lockers do |t|
      t.string :size
      t.boolean :occupied

      t.timestamps
    end
  end
end

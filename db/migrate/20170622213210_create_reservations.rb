class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :guest
      t.references :locker, foreign_key: true

      t.timestamps
    end
  end
end

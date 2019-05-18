class CreateHps < ActiveRecord::Migration[5.0]
  def change
    create_table :hps do |t|

      t.timestamps
    end
  end
end

class CreateJsoncalldata < ActiveRecord::Migration[5.1]
  def change
    create_table :jsoncalldata do |t|
      t.string :FileId
      t.decimal :callDuration
      t.decimal :nonTalkTime
      t.string :–no-migration

      t.timestamps
    end
  end
end

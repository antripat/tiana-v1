class CreateJsoncallworddata < ActiveRecord::Migration[5.1]
  def change
    create_table :jsoncallworddata do |t|
      t.string :Keyword
      t.string :FileName
      t.decimal :startTime
      t.decimal :endTime
      t.string :speakerType
      t.string :gender
      t.decimal :confidence
      t.decimal :score
      t.integer :wordSeq
      t.string :–no-migration

      t.timestamps
    end
  end
end

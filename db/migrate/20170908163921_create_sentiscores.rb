class CreateSentiscores < ActiveRecord::Migration[5.1]
  def change
    create_table :sentiscores do |t|
      t.integer :SentiScore
      t.string :–no-migration

      t.timestamps
    end
  end
end

class CreateMetatransferindicators < ActiveRecord::Migration[5.1]
  def change
    create_table :metatransferindicators do |t|
      t.string :transferIndicatorName
      t.string :–no-migration

      t.timestamps
    end
  end
end

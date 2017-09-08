class CreateSentifourgrams < ActiveRecord::Migration[5.1]
  def change
    create_table :sentifourgrams do |t|
      t.string :FileName
      t.string :FourGram
      t.integer :FourGramScore
      t.string :–no-migration

      t.timestamps
    end
  end
end

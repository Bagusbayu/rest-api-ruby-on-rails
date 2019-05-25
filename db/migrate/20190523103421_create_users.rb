class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.numeric :tb
      t.numeric :bb
      t.numeric :jk
      t.numeric :umur
      t.numeric :fa

      t.timestamps
    end
  end
end

class CreateImts < ActiveRecord::Migration[5.1]
  def change
    create_table :imts do |t|
      t.numeric :iduser
      t.numeric :et

      t.timestamps
    end
  end
end

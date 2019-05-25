class CreateBbis < ActiveRecord::Migration[5.1]
  def change
    create_table :bbis do |t|
      t.numeric :iduser
      t.numeric :bbi
      t.numeric :imt
      t.numeric :bmr
      t.numeric :fa

      t.timestamps
    end
  end
end

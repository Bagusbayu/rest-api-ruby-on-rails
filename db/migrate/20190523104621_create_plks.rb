class CreatePlks < ActiveRecord::Migration[5.1]
  def change
    create_table :plks do |t|
      t.numeric :iduser
      t.numeric :protein
      t.numeric :lemak
      t.numeric :kH

      t.timestamps
    end
  end
end

class CreateAnexos < ActiveRecord::Migration[5.2]
  def change
    create_table :anexos do |t|

      t.timestamps
    end
  end
end

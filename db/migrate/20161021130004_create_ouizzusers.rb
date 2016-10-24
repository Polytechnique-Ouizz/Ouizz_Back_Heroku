class CreateOuizzusers < ActiveRecord::Migration[5.0]
  def change
    create_table :ouizzusers do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end

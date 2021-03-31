class CreateFrontEndUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :front_end_users do |t|
        t.string :email
      t.timestamps
    end
  end
end

class CreateAlphabetaSignups < ActiveRecord::Migration
  def change
    create_table :alphabeta_signups do |t|
      t.string :email

      t.timestamps
    end
  end
end

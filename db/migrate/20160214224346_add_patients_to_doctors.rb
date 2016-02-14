class AddPatientsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :patient_id, :integer
  end
end

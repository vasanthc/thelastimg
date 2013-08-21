class AddingYearToPictures < ActiveRecord::Migration
  def change
  	change_table :pictures do |t|
  		t.string :year
  	end
  end
end

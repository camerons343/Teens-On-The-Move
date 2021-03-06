class Log < ActiveRecord::Base
	validates_presence_of :name, :student_number, :time, :activity, :class, :adult, :message => "can't be empty!"
	validates_numericality_of :student_number, :message => "must be a number!"
	validates_numericality_of :time, :message => "must be a number in minutes format!"
	validates :student_number, length: { is: 6 }
end

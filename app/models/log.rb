class Log < ActiveRecord::Base
  validates :name, presence: true
  validates :student_number, presence: true, numericality: true, length: { is: 6 }
  validates :time, numericality: true, :length => { :within => 1..120 }
  validates :activity, :presence => { :message => "must not be blank!" }
  validates :class, presence: true
  validates :adult, :presence => { :message => "must not be blank!" }
end

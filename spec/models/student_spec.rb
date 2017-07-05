# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

describe Student do
  before(:each) do
    @student = Student.create!(first_name: "Daenerys", last_name: "Targaryen")
  end

  it 'can be created' do
    expect(@student).to be_valid
  end

  it 'has a to_s instance method' do
    expect(@student.to_s).to eq("Daenerys Targaryen")
  end
end

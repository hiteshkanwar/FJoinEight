class Api::V1::UsersController < ApplicationController
require 'csv' 

  # Get Method
  def test_takers
    ## JSON file
    # user_data = File.read(Rails.root.join('../../FJoinEight/fjoin/public/testtaker.json'))
    ## CSV file
    csv_text = File.read(Rails.root.join('../../FJoinEight/fjoin/public/testtaker.csv'))
    csv = CSV.parse(csv_text, :headers => true)
    user_data = {test_takers: []}
    csv.each do |row| 
      user_data[:test_takers] << row.to_hash
    end
      
    if user_data
      render json: user_data
    else
      render json: user_data.errors, status: :record_not_found
    end
  end
end


 
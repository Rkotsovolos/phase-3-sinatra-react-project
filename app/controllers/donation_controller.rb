class DonationController < ApplicationController
    set :default_content_type, 'application/json'

    get "/donations" do
      donations = Donation.all.to_json(include: {user: {only: [:name]}, location: {only:[:name]} })
    end

    post '/donations' do
     
      user = User.find_or_create_by(name: params[:name])
      donation = Donation.create({amount:params[:amount], comment: params[:comment], user_id: user.id, location_id: params[:location_id]})
      
      donation.to_json(include:{user: {only: [:name]}, location: {only:[:name]} })
    end

    delete '/donations/:id' do
      donation = Donation.find(params[:id])
      donation.destroy
      {message: 'Donation deleted'}.to_json
    end

  end
  
  
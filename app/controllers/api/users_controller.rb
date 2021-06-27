class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end
  def show  
    @user = User.find(params[:id])
    render "show.json.jb"
  end
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
  def update
    @user = User.find(params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.image_url = params[:image_url] || @user.image_url
    @user.gender = params[:gender] || @user.gender
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.date_of_birth = params[:date_of_birth] || @user.date_of_birth
    @user.bio = params[:bio] || @user.bio
    @user.personal_website_link = params[:personal_website_link] || @user.personal_website_link
    @user.instagram_link = params[:instagram_link] || @user.instagram_link
    @user.twitter_link = params[:twitter_link] || @user.twitter_link
    @user.facebook_link = params[:facebook_link] || @user.facebook_link
    @user.github_link = params[:github_link] || @user.github_link
    @user.country = params[:country] || @user.country
    @user.city = params[:city] || @user.city
    @user.organization = params[:organization] || @user.organization
    @user.preferred_language = params[:preferred_language] || @user.preferred_language
    @user.title = params[:title] || @user.title
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end
  def delete
    render json: {message: "delete"}
  end
end

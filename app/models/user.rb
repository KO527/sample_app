class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:buyer, :seller]
  enum gender: [:male, :female]

  #if buyer, list past preferences 
  # if role.inspect == :buyer
  # 	has_many :preferences
  # if role.inpsect == :seller
  # 	has_many :crops

  #Find a way to reference preferences as a subset of categories
  # :preferences = :categories

  geocoded_by :address
  after_validation :geocode

  end

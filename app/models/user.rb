class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:buyer, :seller]
  enum gender: [:male, :female]

  validates :categories, presence: true, uniqueness: true, if: :seller?
  validates :preferences, presence: true, uniqueness: {scope: :category}, if: :buyer?

  # if buyer, list past preferences 
   if :role.inspect == :buyer
   	has_many :preferences
   end
   if :role.inspect == :seller
    has_many :categories
   end
  #Find a way to reference preferences as a subset of categories
  # :preferences = :categories

  geocoded_by :address
  after_validation :geocode

  end

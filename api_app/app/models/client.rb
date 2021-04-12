
class Client < ApplicationRecord
  # devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  has_secure_password
 end
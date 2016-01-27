class User < ActiveRecord::Base
  validates :name, presence: true
  validates :user_name, presence: true, :uniqueness => { :case_sensitive => false }
  validates :email, presence: true, format: { with: Devise.email_regexp }

  before_save :assign_api_key

  def assign_api_key
    if api_key.blank?
      self.api_key = generate_api_key
    end
  end

  def generate_api_key
    loop do
      api_key = Devise.friendly_token
      break api_key unless User.where(api_key: api_key).first
    end
  end
end

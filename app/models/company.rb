class Company < ActiveRecord::Base
  has_many :users

  validates_presence_of :name, :email_domain
  validates_format_of :email_domain, :with => /@.+\..+/i
end

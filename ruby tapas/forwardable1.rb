require 'forwardable'

class User

  attr_reader :account

  extend Forwardable

  def_delegators :account, :first_name, :last_name, :email_address

  def initialize(account)
    @account = account
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end


GithubAccount = Struct.new(:uid, :email_address, :first_name, :last_name)
FacebookAccount = Struct.new(:login, :email_address, :first_name, :last_name)

avdi = User.new(GithubAccount.new("avdi", "avdi@avdi.org", "Avdi", "Grimm"))
p avdi
p avdi.first_name



class Store
  extend Forwardable

  def_delegator '@owner.account', :email_address, :owner_email

  def initialize(owner)
    @owner = owner
  end
end

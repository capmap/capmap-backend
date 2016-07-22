class Session < ActiveRecord::Base
  before_validation :generate_token
  belongs_to :user

  private

    def generate_token
      self.token = SecureRandom.hex
    end
end

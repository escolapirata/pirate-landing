class User < Entity
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.urlImage = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
  
  def self.pre_registration(data, provider)
    where(email: data[:email]).first_or_create do |user|
      user.provider = provider
      user.name = data[:name]
      user.email = data[:email]
      user.inviteCode = SecureRandom.base64 (8)
      user.save!
    end
  end
  
  def self.registration(data, provider)
    where(email: data[:email]).first_or_create do |user|
      user.provider = provider
      user.name = data[:name]
      user.email = data[:email]
      #user.urlImage = data.image
      #user.registerCompleted = false #ver quais campos essenciais faltam
      #user.username = data.username
      user.isRegistered = true
      user.save!
    end
  end
end


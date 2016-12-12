class User < ApplicationRecord


validates :role, presence: {:message => "Usted debe elegir un rol"}

before_save { email.downcase! }
validates :name, presence: {:message => "Usted debe ingresar nombre"}
validates :name, length: {minimum: 7, maximum: 50, :message => "Nombre debe tener minimo 7 caracteres" }
validates :name, format: {with: /\s/, :message => "Debe ingresar nombre y apellido" }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
validates :email, presence: {:message => "Usted debe ingresar el email"}
validates :email, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false, :message => "El email debe ser unico" }
has_secure_password
validates :password, presence: {:message => "Usted debe ingresar contraseña"}
validates :password, length: {minimum: 4, :message => "Contraseña debe tener mínimo 4 caracteres" }, allow_nil: true
#validates :password, uniqueness: {:message => "La contraseña ya existe"}
# Returns the hash digest of the given string.
def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
end

Time::DATE_FORMATS[:default] = "%d/%m/%Y - %I:%M"

def self.search(search)
    search = I18n.transliterate(search).gsub(' ', '').downcase;
    res = Array.new
    all.each do |a|
    fullname = I18n.transliterate(a.name)
    fullname = fullname.gsub(' ', '').downcase
    if fullname.include? search
       puts fullname+" "+search
       res << a
    end
    end
    res.sort!{|a, b| a.name <=> b.name}
end


end

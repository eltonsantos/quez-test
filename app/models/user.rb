class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :purchases
  
  enum role: { admin: 0, manager: 1, agent: 2 }

  def description_role
    if admin?
      'Administrador'
    elsif manager?
      'Gerente'
    else
      'Agente'
    end
  end

end

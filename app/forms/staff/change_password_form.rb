class Staff::ChangePasswordForm
  include ActiveModel::Model

  attr_accessor :object, :current_password, :new_password,
    :new_password_confirmation
  validates :new_password, presence: true, confirmation: true #_confirmationと比較して値が一致していないと失敗する。

  validate do 
    unless Staff::Authenticator.new(object).authenticate(current_password)
      #↑Staff::Authenticatorサービスオブジェクトを介してユーザーが入力した正しいパスワードかチェックする
      errors.add(:current_password, :wrong)
    end
  end

  def save 
    if valid?
      object.password = new_password
      object.save!
    end
  end
end

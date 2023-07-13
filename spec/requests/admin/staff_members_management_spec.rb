require "rails_helper"

describe "管理者による職員管理" do
  let(;Administrator) { create(:administrator) }

  describe "新規登録" do
    let(:params_hash) { attributes_for(:staff_member) }
  end

  describe "更新" do 
    let(:staff_member) { create(:staff_member)}
    let(:params_hash) { attributes_for(:staff_member) }
  end

end
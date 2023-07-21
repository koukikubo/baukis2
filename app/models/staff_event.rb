class StaffEvent < ApplicationRecord
  self.inheritance_colum = nil

  belongs_to :member, class_name: "StaffMember", foreign_key: "staff_member_id"
end

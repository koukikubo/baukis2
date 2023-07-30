class StaffMemberPresenter < ModelPresenter
  delegate :suspended?, to: :object
  #職員の停止フラグのOn /Offを再現する記号を返す。
  #On: BALLOT BOX WITH CHECK(U+2611)
  #Off: BALOTT BOX (U+2610)
  def suspended_mark
    suspended?  ?  raw("&#x2611;") : raw("&#x2610;")
  end
end

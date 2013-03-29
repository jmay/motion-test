class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    true
  end

  def this_will_fail
    ab = ABAddressBookCreateWithOptions(nil,nil)
    p = ABAddressBookCopyArrayOfAllPeople(ab)[3]
    v1 = ABRecordCopyValue(p,KABPersonFirstNameProperty)
    v2 = ABRecordCopyValue(p,KABPersonBirthdayProperty)
    v3 = ABRecordCopyValue(p,KABPersonModificationDateProperty)
    v4 = ABRecordCopyValue(p,KABPersonCreationDateProperty)

    warn "This should crash: #{v2} #{v2} #{v2} #{v2} #{v2} #{v2}"
    warn "Or this: #{v2 > Time.now}"
  end
end

# d = UIApplication.sharedApplication.delegate
# d.this_will_fail

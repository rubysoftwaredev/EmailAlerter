### manages the name table

require "email_sender"

class EmailTextCustomizer
  attr_accessor :sender_fname  
  attr_accessor :sender_lname  
  attr_accessor :emailer  

  def initialize(fname,lname,senderemail,wpw)
    @sender_fname = fname
    @sender_lname = lname
    @emailer = EmailSender.new(senderemail,wpw)
  end

public 
  
  def personal_send(toName, to_email_addr,subj,email_text,filename = " ")
    full_text = "Hi " + toName + ",\n\n  " + email_text + "\n\n" + "Take Care,\n" + "Chandra"
    @emailer.send_email( to_email_addr,
                         subj,
                         full_text,filename)
   
  end
 

  def work_send(toName,to_email_addr,subj,email_text, filename = " ")
    full_text = "Dear " + toName + ",\n\n  " + email_text + "\n\n" + "Regards,\n" + "Chandra Gupta"
    @emailer.send_email( to_email_addr,
                       subj,
                       full_text)
  end

  
end


# This program reads email addresses from a table
# constructs personalized emails and sends the email

require 'rubygems'
require 'gmail_sender'

class EmailSender

  attr_accessor :senderEmailer

  def initialize(sender_addr,ppw)
    @senderEmailer = GmailSender.new(sender_addr,ppw)
  end

 public   

  
  def send_email(to_email_addr,subj,email_text,*attach_filename)
    #puts("sending email", to_email_addr, subj, email_text,attach_filename)


    attach_filename.each do |i|
      #print i
      @senderEmailer.attach(i)
    end

#    @senderEmailer.send( :to => to_email_addr,
#                         :subject => subj,
#                         :content => email_text)
   
  end

end

#Test
#g=EmailSender.new("h","b")
#
#arr=["file1", "file2" ]
#
#g.send_email("a","b","c",*arr)

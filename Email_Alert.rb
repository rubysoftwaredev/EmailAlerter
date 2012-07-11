#!/usr/bin/ruby

## Object-Oriented design implemented in Ruby
## uses Gmail gem
## This is the "main" file to send email; i.e. run ruby Email_Alert.rb
## email_sender : Ruby class that sends email using gem Gmail
## NameTableClass : 

require "email_sender"
require "email_text_customizer"


cg = EmailTextCustomizer.new("Chandra",
                   "Gupta",
                   "chandragupta.phd@gmail.com",
                   "mypwd")



cg.personal_send("CG",
                 "chatur_gupta@yahoo.com",
                 "Happy Holidays", 
                 "Wish you a Happy and Prosperous New Year",
                 "./personal_card.jpg")

cg.work_send("Chandra",
              "chandragupta.phd@gmail.com",
              "Happy New Year", 
              "Wish you a Healthy and Safe 2012",
              "./professional_card.jpg")


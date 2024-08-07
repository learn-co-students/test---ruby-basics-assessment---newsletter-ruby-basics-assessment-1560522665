# newsletter.rb
# Generates this week's newsletter
# Use:
# $ ruby newsletter.rb
# 

require 'date'

# Data for the newsletter
CAMPUS = {
    "name": "Springfield",
    "address": "171 Maple St, Springfield, MA 01105",
}
DATE = DateTime.parse('Jun 13, 2019')

SUBSCRIBERS = ["rhona@grimes.info", "cedricschmidt@robel.io", "edmond@ko.org", "bryant@cummingsfisher.biz", "alverta@bernhard.name", "lucinda@beckerbogisich.biz", "wilhelminaullrich@hartmann.info", "shelby@kuhlmankilback.co", "katheruecker@lockman.net", "benedictblanda@collierkuhn.net", "ivory@collins.com", "argelia@vonruedenparisian.biz", "bo@rippin.net", "alfonzoklein@robel.io", "forest@herman.name", "denishahn@west.org", "alfredbrown@wuckert.net", "joan@jacobi.co", "trinidad@macgyver.co", "shaynepurdy@schaeferwisozk.co", "kianafritsch@lesch.biz", "raymundoruel@legros.net", "thomasenaboehm@keeling.net", "lynwood@lakin.biz", "julianpadberg@mosciski.com", "coleen@cormierparker.com", "luiswisoky@mcdermottpadberg.com", "gaylebogan@considine.net"]
UNSUBSCRIBED = ["julianpadberg@mosciski.com", "bo@rippin.net", "idella@ankunding.info", "lynwood@lakin.biz", "royhoeger@wolff.org", "wilhelminaullrich@hartmann.info"]

ARTICLES = [
    {"author":"Destiny Blanda Bruen II","title":"Mining","text":"The orthogonal features, when combined, can explode into complexity.","id":2},
    {"author":"Robin Flatley Hilpert","title":"Retail","text":"In our daily lives as programmers, we process text strings a lot. So I tried to work hard on text processing, namely the string class and regular expressions. Regular expressions are built into the language and are very tuned up for use.","id":3},
    {"author":"Olevia Torphy Kuvalis","title":"Technology","text":"Imagine you are writing an email. You are in front of the computer. You are operating the computer, clicking a mouse and typing on a keyboard, but the message will be sent to a human over the internet. So you are working before the computer, but with a human behind the computer.","id":5},
    {"author":"Dr. Crystle Kovacek Denesik","title":"Legal","text":"Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer.","id":7},
    {"author":"Alfred Jast Hermann","title":"Real-Estate","text":"I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.","id":8},
    {"author":"Michale Bruen Boehm","title":"Consulting","text":"Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.","id":12},
    {"author":"Tony Keeling Cartwright","title":"Design","text":"Often people, especially computer engineers, focus on the machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines.","id":17},
]

def calculate_recipients
    SUBSCRIBERS.each do |email|
        UNSUBSCRIBED.include?(email)
    end
end

def print_recipients
    puts "TODO: print list of recipients
end

def print_subject
    puts "#{format_campus_location(CAMPUS)} Newsletter: #{format_week}"
end

def print_newsletter
    puts "#{format_campus_location(CAMPUS)} Newsletter: #{format_week}"
    puts "TODO: print articles"
    puts format_footer(CAMPUS)
end

#########################
# formatting helper methods for printing the newsletter
#########################

def format_campus_location(campus)
    "Flatiron #{campus["name"]}"
end

def format_week
    DATE.strftime "%b %d, %Y"
    end
end

def format_article(article)
   "TODO - format article with title, byline, and text"
end

def format_footer(campus)
    "Work hard, be nice, and have an epic week! //\n" +
    "Flatiron School · #{campus["name"]} · #{campus["address"]} "
end

def run
    puts "Generating this week's newsletter..."
    puts ""
    print "Subject: "
    print_subject
    print "Recipients: "
    print_recipients
    puts "Body:"
    print_newsletter
end

# When we run the file with 
# $ ruby newsletter.rb
# call the 'run' method
run
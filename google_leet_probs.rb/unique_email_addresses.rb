require 'pry'
# Input: ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
# Output: 2
# Explanation: "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mails

# If you add periods ('.') between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name.  For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.  (Note that this rule does not apply for domain names.)

# If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.  (Again, this rule does not apply for domain names.)

# It is possible to use both of these rules at the same time.

# Given a list of emails, we send one email to each address in the list.  How many different addresses actually receive mails?

# @param {String[]} emails
# @return {Integer}


#need to slice off local name before @
# remove all . from local name
# remove everything after + for local name
# compare strings

emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]

def num_unique_emails(emails)
    local = get_local_name(emails)
    no_plus_sign = remove_plus_sign(local)
    period_removed = removes_period(no_plus_sign)
    local_name_count = period_removed.uniq.count
    domain_name_count = num_domain_names(emails)
    if local_name_count > domain_name_count
        local_name_count
    else
        domain_name_count
    end
end

def num_domain_names(emails)
    domain_names = []
    emails.each { |email| domain_names << email.split('@')[1] }
    domain_names.uniq.count
end

def get_local_name(emails)
    local_names = []
    emails.each { |email| local_names << email[/[^@]+/] }
    local_names
end

# # local_names = ["test.email+alex", "test.e.mail+bob.cathy", "testemail+david"]

def remove_plus_sign(local)
    names_minus_plus = []
    local.each { |name| names_minus_plus << name[/[^+]+/] }
    names_minus_plus
end

# no_plus_sign = ["test.email", "test.e.mail", "testemail"]

def removes_period(no_plus_sign)
    no_period = []
    no_plus_sign.each { |name| no_period << name.delete(".") }
    no_period
end

puts num_unique_emails(emails)

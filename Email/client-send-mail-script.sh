# Send via s-nail
echo "Message Body" | s-nail -s "The subject line" \
 -S v15-compat -S smtp-auth=none -S mta=smtp://mailserver:25 \
 student@eureka.edu


echo "Message Body" | s-nail -s "The subject line" \
 -S v15-compat -S smtp-auth=plain -S smtp-auth-user=student -S smtp-auth-password=password \
 -S mta=smtp://mailserver:25 \
 student@eureka.edu 


echo "Message Body" | s-nail -s "The subject line" \
 -S v15-compat -S smtp-auth=login -S mta=smtp://student:password@mailserver:25 \
 student@eureka.edu
 

# With attachment
echo "Message Body" | s-nail -s "The subject line" \
  -a /path/to/attachment \
  -S v15-compat -S smtp-auth=none -S mta=smtp://mailserver:25 \
 student@eureka.edu


# # Use mail program instead of s-nail
# echo "Message Body" | mail -s "The subject line" \
#  -S v15-compat -S smtp-auth=none -S mta=smtp://mailserver:25 \
#  student@eureka.edu


/etc/mail.rc settings:
set sendmail="/usr/bin/s-nail"
set smtp=mailserver:25
set smtp-use-starttls
set ssl-verify=ignore
set smtp-auth=login
set smtp-auth-user=student
set smtp-auth-password=password


echo "Message Body" | s-nail -s "The subject line" \
 -S v15-compat -S smtp-auth=none -S mta=smtp://mailserver:25 \
 student@eureka.edu

 
# With attachment
echo "Message Body" | s-nail -s "The subject line" \
  -a /path/to/attachment \
  -S v15-compat -S smtp-auth=none -S mta=smtp://mailserver:25 \
 student@eureka.edu


# Use mail program instead of s-nail
echo "Message Body" | mail -s "The subject line" \
 -S v15-compat -S smtp-auth=none -S mta=smtp://mailserver:25 \
 student@eureka.edu
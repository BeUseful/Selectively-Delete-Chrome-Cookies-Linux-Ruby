# Selectively-Delete-Chrome-Cookies-Linux-Ruby

Why:
As far as I can see their seems to be no tool to selectively delete cookies on chrome when using linux systems. So I made this ruby script to query the "cookies.db” file for chrome, and remove entries that don't equal the specified ones that you define.  

How: 
The best way to use this is to first wipe all your cookies, then “sign-in” or get the cookies for the sites that you want to keep. Then  find your “Cookies.db” file location and paste that location onto line-6 of the script. Lastly open the “cookies.db” (with something like “DB Broswer for SQLite”) and copy all the contents of the “host_key” field under the cookies table, in the format used on line 7. Note that multiple cookies may exist for a* website. The script included has examples for reddit and google.  


Required: 
Ruby 2.3.1 (see https://www.ruby-lang.org/en/documentation/installation/#ruby-install) 
Sqlite3 Gem (gem install sqlite3)

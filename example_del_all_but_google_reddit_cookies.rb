#!PUT SHEBANG HERE
require 'rubygems'
require 'sqlite3'
sleep 2
#REPLACE <__> with your username
dB = SQLite3::Database.new('/home/<Replace-this-with-your-user>/.config/google-chrome/Default/Cookies')
#Each cookie ('__', ) is located in the hosts_key field of the cookies table in the cookies.db. Its best to start with a clean state (all cookies erased) and then its simple to just identify which ones go below.
dB.execute("DELETE FROM cookies WHERE host_key NOT IN ('.docs.google.com', '.google.com', '.reddit.com', '.redditenhancementsuite.com', '.redditmedia.com', '.redditstatic.com', '.youtube.com', 'accounts.google.com', 'apis.google.com', 'hangouts.google.com', 'mail.google.com', 'plus.google.com', 'security.google.com', 'security.google.com')")

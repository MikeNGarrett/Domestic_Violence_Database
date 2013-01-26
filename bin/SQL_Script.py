import os

def SQL_Script(user, host, database, file):
    return (os.system("mysql -u "+str(user)+" -p -h "+str(host)+" "+str(database)+" < "+str(file)))
    
        

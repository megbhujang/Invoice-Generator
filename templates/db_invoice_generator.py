import mysql.connector
mydb = mysql.connector.connect(host="localhost", user="root", password="", database="invoice")
print(mydb)

if(mydb):
    print("Connection successful")
else:
    print("Connection import unsuccessful")

mycursor = mydb.cursor()
mycursor.execute("Show tables")

for db in mycursor:
    print(db)

mycursor.execute("SELECT * FROM trainer_deatils")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)

mycursor.execute("SELECT * FROM college_details")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)

mycursor.execute("SELECT * FROM training_details")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)

mycursor.execute("SELECT * FROM bank_details")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)
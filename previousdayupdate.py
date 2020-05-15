import mysql.connector


def update(cursor, state, confcases, confdeaths):
    query = 'UPDATE ydayusa SET confcases=%s WHERE state=%s'
    cursor.execute(query, (confcases,state))
    query = 'UPDATE ydayusa SET confdeaths=%s WHERE state=%s'
    cursor.execute(query, (confdeaths,state))

try:
    cnx = mysql.connector.connect(host='localhost', user='beelz', password='password', database='demo')
    cursor = cnx.cursor()

    usa_Query = "select * from usa"
    cursor.execute(usa_Query)
    records = cursor.fetchall()
    for row in records:
        update(cursor, row[0], row[1], row[2])
        cnx.commit()

    cursor.close()
except mysql.connector.Error as err:
    print(err)
finally:
    try:
        cnx
    except NameError:
        pass
    else:
        cnx.close()


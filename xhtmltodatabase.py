import sys
import xml.dom.minidom
import mysql.connector

def insert(cursor, state, confcases, confdeaths):
	query = 'INSERT INTO usa(state,confcases,confdeaths) VALUES (%s,%s,%s)'
	cursor.execute(query, (state,confcases,confdeaths))

def insertcounty(cursor, county, confcases, confdeaths):
	query = 'INSERT INTO nj(county,confcases,confdeaths) VALUES (%s,%s,%s)'
	cursor.execute(query, (county,confcases,confdeaths))


def update(cursor, state, confcases, confdeaths):
    query = 'UPDATE usa SET confcases=%s WHERE state=%s'
    cursor.execute(query, (confcases,state))
    query = 'UPDATE usa SET confdeaths=%s WHERE state=%s'
    cursor.execute(query, (confdeaths,state))

def updatecounty(cursor, county, confcases, confdeaths):
    query = 'UPDATE nj SET confcases=%s WHERE county=%s'
    cursor.execute(query, (confcases,county))
    query = 'UPDATE nj SET confdeaths=%s WHERE county=%s'
    cursor.execute(query, (confdeaths,county))



document = xml.dom.minidom.parse(sys.argv[1])
tableElements = document.getElementsByTagName('table')
rows = tableElements[0].getElementsByTagName('tr')

document2 = xml.dom.minidom.parse(sys.argv[2])
tableElements2 = document2.getElementsByTagName('table')
rows2 = tableElements2[0].getElementsByTagName('tr')


rows.pop() # removing the total row on bottom of table
rows.pop(0)
rows2.pop(0)
rows2.pop(0) 
rows2.pop(-2)
rows2.pop()
try:
	cnx = mysql.connector.connect(host='localhost', user='beelz', password='password', database='demo')
	cursor = cnx.cursor()

	for tr in rows:
		data = []
		c = 0
		for td in tr.getElementsByTagName('td'):
			for node in td.childNodes:
				if node.nodeType == node.TEXT_NODE:
					if (c == 0 or c == 1 or c == 3):
						data.append(node.nodeValue)
					c += 1
		state = data[0].strip('\n')
		confcases = data[1].strip('\n').replace(',','')
		confdeaths = data[2].strip('\n').replace(',','')
		update(cursor,state,confcases,confdeaths)
		cnx.commit()



	for tr in rows2:
		data = []
		c = 0
		for td in tr.getElementsByTagName('td'):
			for node in td.childNodes:
				if node.nodeType == node.TEXT_NODE:
					if (c == 0 or c == 1 or c == 3):
						data.append(node.nodeValue)
					c += 1
		# print(data)
		county = data[0].strip('\n')
		confcases = data[1].strip('\n').replace(',','')
		confdeaths = data[2].strip('\n').replace(',','')
		updatecounty(cursor,county,confcases,confdeaths)
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




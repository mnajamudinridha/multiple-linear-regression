from sqlalchemy import create_engine
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import statsmodels.api as sm
import seaborn as sns
import pymysql
import sys
sns.set()
# import sys
# learning = sys.argv[1]

sqlEngine       = create_engine('mysql+pymysql://root:rahasia123@mysql/multiple-linear-regression', pool_recycle=3600)
dbConnection    = sqlEngine.connect()
pd.set_option('display.max_rows', 500)
pd.set_option('display.max_columns', 500)
pd.set_option('display.width', 130)
raw_data = pd.read_sql('SELECT * FROM x_generate', con=dbConnection)
print('Data Describe')
print('=============')
data=raw_data.copy()
print(data.describe())

import MySQLdb
db = MySQLdb.connect(host="mysql",user="root",passwd="rahasia123",db="multiple-linear-regression",autocommit=True)
cur = db.cursor() 
cur.execute("SELECT kode FROM kuisioner WHERE jenis='1' AND fungsi='2'")
result_set = cur.fetchall()
row = [item[0] for item in result_set]

cur.execute("SELECT kode FROM kuisioner WHERE jenis='1' AND fungsi='1'")
result_setY = cur.fetchall()
rowY = [item[0] for item in result_setY]

y=data[rowY]
x1=data[row]

x=sm.add_constant(x1)
results=sm.OLS(y,x).fit()
print()
print()
print(results.summary())

# print(results.params)
# print(results.rsquared)

cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q01,"Q01"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q02,"Q02"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q03,"Q03"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q04,"Q04"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q05,"Q05"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q06,"Q06"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q07,"Q07"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q08,"Q08"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q09,"Q09"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q10,"Q10"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q11,"Q11"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q12,"Q12"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q13,"Q13"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q14,"Q14"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q15,"Q15"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q16,"Q16"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q17,"Q17"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q18,"Q18"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q19,"Q19"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.Q20,"Q20"))
cur.execute("UPDATE kuisioner SET bobot =%s WHERE kode=%s",(results.params.const,"Y"))

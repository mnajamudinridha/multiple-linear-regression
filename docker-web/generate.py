from sqlalchemy import create_engine
from scipy import stats
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
Ttable = stats.t.ppf(1-0.025,11)
Ftable = 4.256
F = results.fvalue
# print(results.params)
# print(results.rsquared)

cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q01,results.tvalues.Q01,Ttable,F,Ftable,"Q01"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q02,results.tvalues.Q02,Ttable,F,Ftable,"Q02"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q03,results.tvalues.Q03,Ttable,F,Ftable,"Q03"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q04,results.tvalues.Q04,Ttable,F,Ftable,"Q04"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q05,results.tvalues.Q05,Ttable,F,Ftable,"Q05"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q06,results.tvalues.Q06,Ttable,F,Ftable,"Q06"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q07,results.tvalues.Q07,Ttable,F,Ftable,"Q07"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q08,results.tvalues.Q08,Ttable,F,Ftable,"Q08"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q09,results.tvalues.Q09,Ttable,F,Ftable,"Q09"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q10,results.tvalues.Q10,Ttable,F,Ftable,"Q10"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q11,results.tvalues.Q11,Ttable,F,Ftable,"Q11"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q12,results.tvalues.Q12,Ttable,F,Ftable,"Q12"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q13,results.tvalues.Q13,Ttable,F,Ftable,"Q13"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q14,results.tvalues.Q14,Ttable,F,Ftable,"Q14"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q15,results.tvalues.Q15,Ttable,F,Ftable,"Q15"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q16,results.tvalues.Q16,Ttable,F,Ftable,"Q16"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q17,results.tvalues.Q17,Ttable,F,Ftable,"Q17"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q18,results.tvalues.Q18,Ttable,F,Ftable,"Q18"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q19,results.tvalues.Q19,Ttable,F,Ftable,"Q19"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.Q20,results.tvalues.Q20,Ttable,F,Ftable,"Q20"))
cur.execute("UPDATE kuisioner SET bobot =%s, tnilai = %s, ttable = %s, fnilai =%s, ftable = %s WHERE kode=%s",(results.params.const,results.tvalues.const,Ttable,F,Ftable,"Y"))

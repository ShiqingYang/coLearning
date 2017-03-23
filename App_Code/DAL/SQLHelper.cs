using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    class SQLHelper
    {
        public SQLHelper()
        {

        }
        private static string connStr =  ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        public static DataTable ExecuteTableSql(string sql, params SqlParameter[] param)
        {
            return ExecuteTable(sql, CommandType.Text, param);
        }

        public static DataTable ExecuteTableSP(string sp, params SqlParameter[] parm)
        {
            return ExecuteTable(sp, CommandType.StoredProcedure, parm);
        }

        /// <summary>
        /// 执行查询
        /// </summary>
        /// <param name="txt"></param>
        /// <param name="ct">sql语句，还是存储过程</param>
        /// <param name="param"></param>
        /// <returns></returns>
        private static DataTable ExecuteTable(string txt, CommandType ct, params SqlParameter[] param)
        {

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(txt, conn))
                {
                    cmd.CommandType = ct;
                    cmd.Parameters.AddRange(param);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="txt"></param>
        /// <param name="ct"></param>
        /// <param name="param"></param>
        /// <returns></returns>
        public static int ExecuteNonQuery(string txt, CommandType ct, params SqlParameter[] param)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(txt, conn))
                {
                    cmd.CommandType = ct;
                    cmd.Parameters.AddRange(param);

                    conn.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="txt"></param>
        /// <param name="ct"></param>
        /// <param name="param"></param>
        /// <returns></returns>
        public static object ExecuteScalar(string txt, CommandType ct, params SqlParameter[] param)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(txt, conn))
                {
                    cmd.CommandType = ct;
                    cmd.Parameters.AddRange(param);

                    conn.Open();
                    return cmd.ExecuteScalar();
                }
            }
        }


        public static SqlConnection DBCon()
        {
            return new SqlConnection("server=.;database=coLearning;user id=sa;pwd=111111");
        }
        //接收传来的SQL语句，返回查询到的数据结果集
        public DataSet GetDataSet(string SqlString)
        {
            SqlConnection conn = DBCon();//建立连接
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(SqlString, conn);  //建立适配器对象
            DataSet dataset = new DataSet();//建立数据内存对象
            adapter.Fill(dataset);//执行SQL操作，将结果放到内存对象中
            conn.Close();
            return dataset;//返回查询数据库的结果
        }
        //接收传来的SQL语句，执行一个查询操作，返回查询的一行数据
        public DataRow GetDataRow(string SqlString)
        {
            DataSet dataset = GetDataSet(SqlString);   //建立内存数据对象，得到查询结果数据集
            if (dataset.Tables[0].Rows.Count > 0)//若返回数据集结果的行数大于0
                return dataset.Tables[0].Rows[0];//返回数据结果集第一条记录
            else
                return null;
        }
        //接收传来的一条SQL语句，执行相应的操作。形参为字符串，在本类中为重载方法
        public void ExecuteSQL(string SqlString)
        {
            SqlConnection conn = DBCon();
            conn.Open();
            SqlCommand cmd = new SqlCommand(SqlString, conn);
            cmd.ExecuteNonQuery();
        }
        //接收传来的数据表名称和哈希表对象，建立插入语句，调用执行方法
        public void Insert(string TableName, Hashtable ht)
        {
            int n = 0;
            //构建插入语句
            string Fileds = "(";
            string Values = " Values(";
            foreach (DictionaryEntry item in ht)
            {
                if (n != 0)
                {
                    Fileds += ",";
                    Values += ",";

                }
                Fileds += item.Key.ToString();
                Values += item.Value.ToString();
                n++;
            }
            Fileds += ")";
            Values += ")";
            string SqlString = "insert into " + TableName + Fileds + Values;
            //执行插入
            ExecuteSQL(SqlString);//调用执行函数

        }
        //接收传来的多条SQL语句，执行相应的操作，形参为集合中的列表类对象，在本类中为重载方法
        public void ExecuteSQL(ArrayList SqlStrings)
        {
            SqlConnection conn = DBCon();
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            foreach (string str in SqlStrings)
            {
                cmd.CommandText = str;
                cmd.ExecuteNonQuery();//执行每一条传来的语句
            }
            conn.Close();
        }
        //更新数据库中的数据
        public void Update(string TableName, Hashtable ht, string Where)
        {
            int n = 0;
            string Fileds = " ";
            foreach (DictionaryEntry item in ht)
            {
                if (n != 0)
                    Fileds += ",";
                Fileds += item.Key.ToString();
                Fileds += "=";
                Fileds += item.Value.ToString();
                n++;
            }
            Fileds += " ";
            string SqlString = "Update " + TableName + " Set " + Fileds + Where;
            ExecuteSQL(SqlString);
        }


    }
}

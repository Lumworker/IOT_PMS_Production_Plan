using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Collections.Specialized;
using System.Globalization;
using System.Text;
using System.Collections.Generic;
using System.Collections;
using System.Web.UI;
using System.Configuration;
using System.IO;
using System.Web.UI.WebControls;

namespace IOT_PMS_Production_Plan
{
    public class ClassBrowseNew
    {
        //On Localhost
        //public static String connectDB = "Data Source=203.151.62.137;Initial Catalog=IOTPatkol;Persist Security Info=True;User ID=sa;Password=@Patkol.com; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        //On server
        public static String connectDB = "Data Source=172.25.238.2;Initial Catalog=IOTPatkol;Persist Security Info=True;User ID=sa;Password=@Patkol.com; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public string SP_Save_Production_Data(string userId, int role, int B, int PB, int P2, int PC_B, int R, int S, int PS, int PC_S)
        {
            SqlConnection connect = new SqlConnection(connectDB);
            SqlCommand cmd = new SqlCommand("SP_Save_Production_Data", connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);
            cmd.Parameters.AddWithValue("role", role);
            cmd.Parameters.AddWithValue("B", B);
            cmd.Parameters.AddWithValue("PB", PB);
            cmd.Parameters.AddWithValue("P2", P2);
            cmd.Parameters.AddWithValue("PC_B", PC_B);
            cmd.Parameters.AddWithValue("R", R);
            cmd.Parameters.AddWithValue("S", S);
            cmd.Parameters.AddWithValue("PS", PS);
            cmd.Parameters.AddWithValue("PC_S", PC_S);
            connect.Open();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["trans_ID"].ToString();
            }
            connect.Close();
            return returnData;
        }
        public string SP_Update_Production_Plan_Operator_TV(int trans_id, int B, int PB, int P2, int PC_B, int R, int S, int PS, int PC_S)
        {
            SqlConnection connect = new SqlConnection(connectDB);
            SqlCommand cmd = new SqlCommand("SP_Update_Production_Plan_Operator_TV", connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("trans_id", trans_id);
            cmd.Parameters.AddWithValue("B", B);
            cmd.Parameters.AddWithValue("PB", PB);
            cmd.Parameters.AddWithValue("P2", P2);
            cmd.Parameters.AddWithValue("PC_B", PC_B);
            cmd.Parameters.AddWithValue("R", R);
            cmd.Parameters.AddWithValue("S", S);
            cmd.Parameters.AddWithValue("PS", PS);
            cmd.Parameters.AddWithValue("PC_S", PC_S);
            connect.Open();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["trans_ID"].ToString();
            }
            connect.Close();
            return returnData;
        }
        public string SP_Update_TimeKeeper_Production_Data_TV(int ID, int trans_id, string main_machine_ID, int cycle)
        {
            SqlConnection connect = new SqlConnection(connectDB); 
            SqlCommand cmd = new SqlCommand("SP_Update_TimeKeeper_Production_Data_TV", connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", ID);
            cmd.Parameters.AddWithValue("trans_id", trans_id);
            cmd.Parameters.AddWithValue("main_machine_ID", main_machine_ID);
            cmd.Parameters.AddWithValue("cycle", cycle);
            connect.Open();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["trans_ID"].ToString();
            }
            connect.Close();
            return returnData;
        }
        public List<ArrayList> SP_GET_Production_DATA_TV(string userId, string trans_id, string text)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(connectDB))
            {
                string sql = "EXEC [SP_GET_Production_DATA_TV] '"+ userId + "','"+ trans_id + "','"+ text + "'";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> SP_GET_Production_Data(string userId,int trans_id,int step)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(connectDB))
            {
                string sql = "EXEC [dbo].[SP_GET_Production_Data] '"+ userId + "','"+ trans_id + "',"+step;
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> SP_GET_Production_Data_Count(string userId,string trans_id)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(connectDB))
            {
                string sql = "EXEC [dbo].[SP_GET_Production_Data_Count] '" + userId + "','"+ trans_id + "'";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> SP_GET_Production_Check_TV(string userId, string Role)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(connectDB))
            {
                string sql = "EXEC [SP_GET_Production_Check_TV] '" + userId + "','" + Role + "'";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
    }
 
}
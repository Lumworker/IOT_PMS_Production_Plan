using System;
using System.Collections;
using System.Collections.Generic;
using System.Web.Services;
using System.Web.UI;

namespace IOT_PMS_Production_Plan
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string SP_Save_Production_Data(string userId, int role, int B, int PB, int P2, int PC_B, int R, int S, int PS, int PC_S)
        {
            return new ClassBrowseNew().SP_Save_Production_Data(userId, role, B,  PB,  P2,  PC_B,  R,  S,  PS,  PC_S);
        }
        [WebMethod]
        public static string SP_Update_Production_Plan_Operator_TV(int trans_id, int B, int PB, int P2, int PC_B, int R, int S, int PS, int PC_S)
        {
            return new ClassBrowseNew().SP_Update_Production_Plan_Operator_TV(trans_id, B,  PB,  P2,  PC_B,  R,  S,  PS,  PC_S);
        }
        [WebMethod]
        public static string SP_Update_TimeKeeper_Production_Data_TV(int ID, int trans_id, string main_machine_ID, int cycle)
        {
            return new ClassBrowseNew().SP_Update_TimeKeeper_Production_Data_TV( ID, trans_id, main_machine_ID, cycle);
        }
        [WebMethod]
        public static List<ArrayList> SP_GET_Production_Data(string userId, int trans_id, int step)
        {
            return new ClassBrowseNew().SP_GET_Production_Data(userId, trans_id, step);
        }
        [WebMethod]
        public static List<ArrayList> SP_GET_Production_Data_Count(string userId,string trans_id)
        {
            return new ClassBrowseNew().SP_GET_Production_Data_Count(userId, trans_id);
        }
        [WebMethod]
        public static List<ArrayList> SP_GET_Production_DATA_TV(string userId,string trans_id, string text)
        {
            return new ClassBrowseNew().SP_GET_Production_DATA_TV( userId, trans_id, text);
        }
        [WebMethod]
        public static List<ArrayList> SP_GET_Production_Check_TV(string userId,string Role)
        {
            return new ClassBrowseNew().SP_GET_Production_Check_TV( userId, Role);
        }
    }
}
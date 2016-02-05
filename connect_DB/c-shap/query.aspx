<%@ Page Language="C#" %>  
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Web.Services" %>   
<script runat="server"> 
   
    #region AdoQuery
    [WebMethod]
    public static object cSelectAdo(string data)
    {
        return BAL.QueryAdoBAL.cSelectAdo(data);
    } 
    [WebMethod]
    public static object cInsertAdo(string data)
    {
        return BAL.QueryAdoBAL.cInsertAdo(data);
    } 
    [WebMethod]
    public static object cUpdateAdo(string data)
    {
        return BAL.QueryAdoBAL.cUpdateAdo(data);
    }
    
     [WebMethod]
    public static object cDeleteAdo(string data)
    {
        return BAL.QueryAdoBAL.cDeleteAdo(data);
    }
    #endregion


     #region linqQuery
     [WebMethod]
     public static object cSelectLinq(string data)
     {
         return BAL.QueryLinqBAL.cSelectLinq(data);
     }
     [WebMethod]
     public static object cInsertLinq(string data)
     {
         return BAL.QueryLinqBAL.cInsertLinq(data);
     }
     [WebMethod]
     public static object cUpdateLinq(string data)
     {
         return BAL.QueryLinqBAL.cUpdateLinq(data);
     }

     [WebMethod]
     public static object cDeleteLinq(string data)
     {
         return BAL.QueryLinqBAL.cDeleteLinq(data);
     }
    #endregion



     #region EntityQuery
     [WebMethod]
     public static object cSelectEntity(string data)
     {
         return BAL.QueryEntityBAL.cSelectEntity(data);
     }
     [WebMethod]
     public static object cInsertEntity(string data)
     {
         return BAL.QueryEntityBAL.cInsertEntity(data);
     }
     [WebMethod]
     public static object cUpdateEntity(string data)
     {
         return BAL.QueryEntityBAL.cUpdateEntity(data);
     }

     [WebMethod]
     public static object cDeleteEntity(string data)
     {
         return BAL.QueryEntityBAL.cDeleteEntity(data);
     }
    #endregion
    
    
     
     
</script>
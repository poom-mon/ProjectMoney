<%@ Page Title="" Language="C#" MasterPageFile="~/MS_MAIN.master" AutoEventWireup="true" CodeFile="log.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpnHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpn_Content" Runat="Server"> 
      <b> LOG  </b>
       <div style="background-color:#FFFFFF">


        <pre>

        เก็บ LOG Erro  โดย call ไปที่ web api

        
    public static void ErrorFunction(String Sql, SqlCommand Comm, String Error, String ConnectionString)
    {
        try
        {
            #region scriptcreate
            /*
             USE [silkspan]
                GO 
                SET ANSI_NULLS ON
                GO
                SET QUOTED_IDENTIFIER ON
                GO
                SET ANSI_PADDING ON
                GO
                CREATE TABLE [dbo].[LOG_ERROR_PAGE](
	                [ID] [int] IDENTITY(1,1) NOT NULL,
	                [SqlScript] [varchar](3000) NULL,
	                [SqlParameter] [varchar](3000) NULL,
	                [Error] [varchar](3000) NULL,
	                [Url] [varchar](500) NULL,
	                [Applicationdate] [datetime] NULL,
	                [ConnectionServer] [varchar](500) NULL,
                 CONSTRAINT [PK_LOG_ERROR_PAGE] PRIMARY KEY CLUSTERED 
                (
	                [ID] ASC
                )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
                ) ON [PRIMARY]

                GO
                SET ANSI_PADDING OFF 
             */

            #endregion
            if (!Sql.Contains("LOG_ERROR_PAGE"))
            {
                String sqlParamter = "";
                for (int i = 0; i < Comm.Parameters.Count; i++)
                {
                    sqlParamter += " " + Comm.Parameters[i].ParameterName.ToString() + "=" + Comm.Parameters[i].Value.ToString() + " ( " + Comm.Parameters[i].DbType.ToString() + ")";
                }
                var client = new Helper.httpUtils.RestClient();
                client.EndPoint = @"http://www.silkspan.com/silkspanapis/api/log/updateLogError";
                client.Method = Helper.httpUtils.HttpVerb.POST;
                client.ContentType = "application/json";
                client.PostData = "{ \"SqlScript\" :  \"" + Sql + "\", \"SqlParameter\" :  \"" + sqlParamter + "\", \"Error\" : \"" + Error + "\", \"Url\": \"" + MODEL_Main.Helper.getCurrentUrl() + "\", \"ConnectionServer\" : \"" + ConnectionString + "\" }";
                var json = client.MakeRequest();
                string jsonReturn = client.MakeRequest();
            }
        }
        catch (Exception ex)
        {

        }

    }

        </pre>
     
     </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpnfoot" Runat="Server">
     
</asp:Content>


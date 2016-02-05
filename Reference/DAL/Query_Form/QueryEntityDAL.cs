using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL 
{
    public class QueryEntityDAL
    {
        Entity.silkspanEntities db = new Entity.silkspanEntities();
        public static object cSelectEntity(MODEL.Query obj)
        {
            
            Entity.silkspanEntities db = new Entity.silkspanEntities();
            var obReturn = db.TEST_SYSTEM.Where(
                        e => e.SYSTEM_NAME=="entity"
                    ).ToList();
            return obReturn;
            

          /*return  db.ExecuteStoreQuery<MODEL.QueryModel>(" select * from TEST_SYSTEM ").ToList();  */
          

        }

        public static object cInsertEntity(MODEL.Query obj)
        {
            Entity.silkspanEntities db = new Entity.silkspanEntities();
            Entity.TEST_SYSTEM ob = new  Entity.TEST_SYSTEM();
            ob.NAME = obj.NAME;
            ob.SYSTEM_NAME = "entity";
            ob.EMAIL = obj.EMAIL; 
            db.TEST_SYSTEM.AddObject(ob);
            db.SaveChanges();

            return true;
        }

        public static object cUpdateEntity(MODEL.Query obj)
        {  
            Entity.silkspanEntities db = new Entity.silkspanEntities();
            var obReturn = db.TEST_SYSTEM.First(
                        e => (e.SYSTEM_NAME == "entity") &&
                            (e.ID == obj.ID)
                          );
            obReturn.NAME = obj.NAME;
            obReturn.EMAIL = obj.EMAIL;
            db.SaveChanges();

            return true;
        }

        public static object cDeleteEntity(MODEL.Query obj)
        {
            Entity.silkspanEntities db = new Entity.silkspanEntities();
            var obReturn = db.TEST_SYSTEM.Where(
                        e => (e.ID == obj.ID)
                    ).First();
            db.TEST_SYSTEM.DeleteObject(obReturn);
            db.SaveChanges();

            return true;
        }
       /* public static object searchCigna(MODEL_Report.ReportPartnerModel.PartnerCigna data)
        {
            ///entity convert ไม่ได้ต้อง convert หลังจาก query เสร็จ
            DateTime dtStart = Convert.ToDateTime(data.StartDate);
            DateTime dtEnd = Convert.ToDateTime(data.EndDate).AddDays(1);
            Entity.spEntity db = new Entity.spEntity();
            var objre = (from cPackage in db.cigna_package_header
                         join cLogpage in db.log_cigna_page
                         on cPackage.plan_id equals cLogpage.plan_id
                         where (cLogpage.log_date >= dtStart) &&
                                  (cLogpage.log_date < dtEnd) &&
                                  (cLogpage.pid == 257)
                         select new
                         {
                             cLogpage.log_date,
                             cLogpage.TitleName,
                             cLogpage.name,
                             cLogpage.lastname,
                             cPackage.plan_name
                         }
                     ).ToList().Select(c => new MODEL_Report.ReportPartnerModel.ReportCigna
                     {
                         LogDate = (c.log_date.Value.ToString("dd/MM/yyyy H:mm:ss")),
                         Name = (c.TitleName + " " + c.name + "  " + c.lastname),
                         Product = c.plan_name
                     }).ToList<MODEL_Report.ReportPartnerModel.ReportCigna>();

            return objre;
        } */
    }
}

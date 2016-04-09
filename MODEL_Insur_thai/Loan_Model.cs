namespace MODEL_Insur_thai
{
    public class Loan_Model
    {
        public class LoanInfo
        {
            public int? Loan_Id { get; set; }

            public int? bank_Id { get; set; }

            public int? Loan_typeId { get; set; }

            public string Loan_Name { get; set; }

            public string Loan_Descript { get; set; }

            public string Loan_Amount { get; set; }

            public string Loan_Interest { get; set; }

            public string Loan_Promotion { get; set; }

            public string Loan_urlRegist { get; set; }

            public string Loan_urlReference { get; set; }

            public string create_user { get; set; }

            public string create_date { get; set; }

            public string update_user { get; set; }

            public string update_date { get; set; }

            public string Loan_logoPath { get; set; }
        }

        public class bank_pathfile
        {
            public int? id { get; set; }

            public int? loan_Id { get; set; }

            public string file_path { get; set; }

            public string file_desc { get; set; }

            public string file_name { get; set; }

            public string create_date { get; set; }

            public string create_user { get; set; }

            public string update_date { get; set; }

            public string update_user { get; set; }
        }

        public class bank_info
        {
            public int? bank_Id { get; set; }

            public string bank_Name { get; set; }

            public string bank_LogoPath { get; set; }
        }

        public class callLoanPackage
        {
            public int? Loan_typeId { get; set; }
             

            public int? Loan_Id { get; set; }

            public int? bank_Id { get; set; }

            public int? Loan_type { get; set; }

            public string Loan_Name { get; set; }

            public string Loan_Descript { get; set; }

            public string Loan_Amount { get; set; }

            public string Loan_Interest { get; set; }

            public string Loan_Promotion { get; set; }

            public string Loan_logoPath { get; set; }

            public string Loan_fee { get; set; }

            public string bank_Name { get; set; }

            public string bank_LogoPath { get; set; }
            

            

        }

        public class loan_pq
        {
            public int? id { get; set; }

            public string titleName { get; set; }

            public string name { get; set; }

            public string lastname { get; set; }

            public string birthdate { get; set; }

            public string sex { get; set; }

            public string address { get; set; }

            public string mobile { get; set; }

            public string tel { get; set; }

            public string email { get; set; }

            public string jobs { get; set; }

            public string work_province { get; set; }

            public string salary { get; set; }

            public string payment_Salary { get; set; }

            public int? work_year { get; set; }

            public int? work_month { get; set; }

            public string work_address { get; set; }

            public string work_tel { get; set; }

            public int? Loan_id { get; set; }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SQLite;
using System.Data;

namespace TruText_Ledger
{
    public class DataAccess
    {
        public static string DBCONN = @"DATA SOURCE = TruTexts_Customers.db;"; //this is the connection string for where the database is which is TruText_Ledger\TruText_Ledger\bin\Debug

        public static string SelectPrivilege { get; set; } //this is the current privilege of the user between Admin and Normal and can determine what user restrictions there are.

        public static string SelectTable { get; set; }//this is the current table being worked on

        public static string SelectOperation { get; set; }//this is the current operation being done between insert, update and delete.
        
        public static void ConnectToDatabase()
        {
            using (SQLiteConnection TruTextsCustomers = new SQLiteConnection(DBCONN))
            {
                TruTextsCustomers.Open();
                //6/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string tableQueryCustomers = "CREATE TABLE IF NOT EXISTS" +
                      " Customers" +
                      "(" +
                      "CellNumeber NVARCHAR(2048) PRIMARY KEY NOT NULL," +
                      "FirstName NVARCHAR(2048) NULL," +
                      "Surname NVARCHAR(2048) NULL," +
                      "PhyscalAddress NVARCHAR(2048) NULL," +
                      "City NVARCHAR(2048) NULL," +
                      "UnitsBought INTEGER NULL" +
                      ")";
                SQLiteCommand createTableCustomers = new SQLiteCommand(tableQueryCustomers, TruTextsCustomers);
                createTableCustomers.ExecuteReader();
                //6/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string tableQueryOrders = "CREATE TABLE IF NOT EXISTS" +
                      " Orders" +
                      "(" +
                      "OrderNumber NVARCHAR(2048) PRIMARY KEY NOT NULL," +
                      "BookName NVARCHAR(2048) NULL," +
                      "BookPublisher NVARCHAR(2048) NULL," +
                      "BookAuther NVARCHAR(2048) NULL," +
                      "Quantity INTEGER NULL ," +
                      "Supplier NVARCHAR(2048) NULL" +
                      ")";
                SQLiteCommand createTableCommandOrders = new SQLiteCommand(tableQueryOrders, TruTextsCustomers);
                createTableCommandOrders.ExecuteReader();
                //7/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string tableCommandBooks = "CREATE TABLE IF NOT EXISTS" +
                      " Books" +
                      "(" +
                      "Barcode NVARCHAR(2048) PRIMARY KEY NOT NULL," +
                      "Title NVARCHAR(2048) NULL," +
                      "Auther NVARCHAR(2048) NULL," +
                      "Publisher NVARCHAR(2048) NULL," +
                      "Stock NVARCHAR(2048) NULL," +
                      "UnitsSold INTEGER NULL," +
                      "Supplier NVARCHAR(2048) NULL " +
                      ")";
                SQLiteCommand createTableBooks = new SQLiteCommand(tableCommandBooks, TruTextsCustomers);
                createTableBooks.ExecuteReader();
                //7/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string tableQuerySuppliers = "CREATE TABLE IF NOT EXISTS" +
                      " Suppliers" +
                      "(" +
                      "ID NVARCHAR(2048) PRIMARY KEY NOT NULL," +
                      "Name NVARCHAR(2048) NULL," +
                      "Address NVARCHAR(2048) NULL," +
                      "City NVARCHAR(2048) NULL," +
                      "Province NVARCHAR(2048) NULL, " +
                      "Country NVARCHAR(2048) NULL," +
                      "UnitsAvailable INTEGER NULL" +
                      ")";
                SQLiteCommand createTableSuppliers = new SQLiteCommand(tableQuerySuppliers, TruTextsCustomers);
                createTableSuppliers.ExecuteReader();
                //7/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string tableQueryEmployees = "CREATE TABLE IF NOT EXISTS" +
                      " Employees" +
                      "(" +
                      "ID NVARCHAR(2048) PRIMARY KEY NOT NULL," +
                      "Name NVARCHAR(2048) NULL," +
                      "Surname NVARCHAR(2048) NULL," +
                      "Position NVARCHAR(2048) NULL," +
                      "IsStaff NVARCHAR(2048) NULL," +
                      "UnitsSold INTEGER NULL," +
                      "Salary NVARCHAR(2048) NULL" +
                      ")";
                SQLiteCommand createTableEmployees = new SQLiteCommand(tableQueryEmployees, TruTextsCustomers);
                createTableEmployees.ExecuteReader();
                //6/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string tableQueryRoles = "CREATE TABLE IF NOT EXISTS" +
                      " Roles" +
                      "(" +
                      "ID NVARCHAR(2048) PRIMARY KEY NOT NULL," +
                      "AccountName NVARCHAR(2048) NULL," +
                      "AccountPassword NVARCHAR(2048) NULL," +
                      "Privilege NVARCHAR(2048) NULL " +
                      ")";
                SQLiteCommand createTableRoles = new SQLiteCommand(tableQueryRoles, TruTextsCustomers);
                createTableRoles.ExecuteReader();
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            }
        } //this method creates a new database if one does exist

        public static int Login(string sName, string sPassword) 
        {
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery = "SELECT * FROM Roles WHERE AccountName ='" + sName + "' AND AccountPassword = '" + sPassword + "'" +
                    "AND Privilege = 'NORML';";

                SQLiteCommand createCommand = new SQLiteCommand(sqlQuery, dbConn);
                createCommand.ExecuteNonQuery();           
                SQLiteDataReader DataReader = createCommand.ExecuteReader();

                int iCount = 0;
                while (DataReader.Read())
                {
                    iCount++;
                }

                SelectPrivilege = "NORML";
                if (iCount != 1)
                {
                    sqlQuery = "SELECT * FROM Roles WHERE AccountName ='" + sName + "' AND AccountPassword = '" + sPassword + "'" +
                        "AND Privilege = 'ADMIN';";

                    createCommand = new SQLiteCommand(sqlQuery, dbConn);
                    createCommand.ExecuteNonQuery();
                    DataReader = createCommand.ExecuteReader();

                    iCount = 0;
                    while (DataReader.Read())
                    {
                        iCount++;
                    }

                    SelectPrivilege = "ADMIN";
                }

                dbConn.Close();

                return iCount;
            }
        } //this method logs the user in by comparing entered details with existing ones in the database and counting them

        public static DataTable LoadToDataGrid(string FilterType)
        {
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery = "";

                switch (FilterType)
                {
                    default:
                        sqlQuery = "SELECT * FROM " + SelectTable + " ";
                        break;
                    case ("MstSld"):
                        sqlQuery = "SELECT Title,UnitsSold FROM Books ORDER BY UnitsSold DESC ";
                        break;

                    case ("BstCst"):
                        sqlQuery = "SELECT FirstName,Surname,UnitsBought FROM Customers ORDER BY UnitsBought DESC";
                        break;

                    case ("MstSls"):
                        sqlQuery = "SELECT Name,Surname,UnitsSold FROM Employees ORDER BY UnitsSold DESC";
                        break;

                    case ("MstPrvd"):
                        sqlQuery = "SELECT Name,UnitsAvailable FROM Suppliers ORDER BY UnitsAvailable DESC";
                        break;
                }

                SQLiteCommand createCommand = new SQLiteCommand(sqlQuery, dbConn);
                createCommand.ExecuteNonQuery();

                SQLiteDataAdapter AdaptData = new SQLiteDataAdapter(createCommand);
                DataTable CurrentTable = new DataTable(SelectTable);

                AdaptData.Fill(CurrentTable);
                AdaptData.Update(CurrentTable);

                dbConn.Close();

                return CurrentTable;
            }
        } //this method loads the tables from the database to the program DataGrid to be viewed
 
        public static DataSet LoadDistinctDataSets(string Table, string Column)
        {
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery = "SELECT DISTINCT "+ Column + " FROM '"+ Table + "'";

                SQLiteCommand createCommand = new SQLiteCommand(sqlQuery, dbConn);
                createCommand.ExecuteNonQuery();

                SQLiteDataAdapter AdaptData = new SQLiteDataAdapter(createCommand);
                DataSet CurrentTable = new DataSet();
                AdaptData.Fill(CurrentTable);



                dbConn.Close();

                return CurrentTable;
            }
        } //this method loads distinct entries in a column and puts it in comboboxe's itemsource to be used

        public static DataSet LoadDataSets(string Table)
        {
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery = "SELECT * FROM '" + Table + "'";

                SQLiteCommand createCommand = new SQLiteCommand(sqlQuery, dbConn);
                createCommand.ExecuteNonQuery();

                SQLiteDataAdapter AdaptData = new SQLiteDataAdapter(createCommand);
                DataSet CurrentTable = new DataSet();
                AdaptData.Fill(CurrentTable);

                dbConn.Close();

                return CurrentTable;
            }
        } //this method is used to update comboboxes text to show what row is selected by use of the primary column items

        public static int CheckExist(string sCheck)
        { 
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery;
                SQLiteCommand createCommand;
                SQLiteDataReader DataReader;
                int iCount = 0;

                switch (SelectTable)
                {
                    case("Customers"):
                        sqlQuery = "SELECT * FROM Customers WHERE Cellnumber ='" + sCheck + "';";

                        createCommand = new SQLiteCommand(sqlQuery, dbConn);
                        createCommand.ExecuteNonQuery();
                        DataReader = createCommand.ExecuteReader();

                        iCount = 0;
                        while (DataReader.Read())
                        {
                            iCount++;
                        }
                        break;

                    case ("Books"):
                        sqlQuery = "SELECT * FROM Books WHERE Barcode ='" + sCheck + "';";

                        createCommand = new SQLiteCommand(sqlQuery, dbConn);
                        createCommand.ExecuteNonQuery();
                        DataReader = createCommand.ExecuteReader();

                        iCount = 0;
                        while (DataReader.Read())
                        {
                            iCount++;
                        }
                        break;

                    case ("Orders"):
                        sqlQuery = "SELECT * FROM Orders WHERE OrderNumber ='" + sCheck + "';";

                        createCommand = new SQLiteCommand(sqlQuery, dbConn);
                        createCommand.ExecuteNonQuery();
                        DataReader = createCommand.ExecuteReader();

                        iCount = 0;
                        while (DataReader.Read())
                        {
                            iCount++;
                        }
                        break;

                    case ("Suppliers"):
                        sqlQuery = "SELECT * FROM Suppliers WHERE ID ='" + sCheck + "';";

                        createCommand = new SQLiteCommand(sqlQuery, dbConn);
                        createCommand.ExecuteNonQuery();
                        DataReader = createCommand.ExecuteReader();

                        iCount = 0;
                        while (DataReader.Read())
                        {
                            iCount++;
                        }
                        break;
                    case ("Employees"):
                        sqlQuery = "SELECT * FROM Employees WHERE ID ='" + sCheck + "';";

                        createCommand = new SQLiteCommand(sqlQuery, dbConn);
                        createCommand.ExecuteNonQuery();
                        DataReader = createCommand.ExecuteReader();

                        iCount = 0;
                        while (DataReader.Read())
                        {
                            iCount++;
                        }
                        break;

                    case ("Roles"):
                        sqlQuery = "SELECT * FROM Roles WHERE ID ='" + sCheck + "';";

                        createCommand = new SQLiteCommand(sqlQuery, dbConn);
                        createCommand.ExecuteNonQuery();
                        DataReader = createCommand.ExecuteReader();

                        iCount = 0;
                        while (DataReader.Read())
                        {
                            iCount++;
                        }
                        break;
                }

                dbConn.Close();

                return iCount;
            }
        }// this method checks for the existence of the primarykey that is about to be entered

        public static string ExecuteOperation(string s1, string s2, string s3, string s4, string s5, string s6, string s7)
        {

            switch (SelectOperation)
            {
                case ("Insert"):
                    InsertToTable(s1, s2, s3, s4, s5, s6, s7);
                    return "Your information has been Saved to the database!";
                case ("Update"):
                    UpdateToTable(s1, s2, s3, s4, s5, s6, s7);
                    return "Your information has been Updated on the database!";
                case ("Delete"):
                    DeleteToTable(s1, s2, s3, s4, s5, s6, s7);
                    return "Your information has been Deleted from the database!";
                default:
                    return "Select a mode!";
            }
        } // this method is used to select what operation to preform and return messages for user input

        public static void InsertToTable(string s1, string s2, string s3, string s4, string s5, string s6, string s7)
        {
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery = "INSERT INTO " + SelectTable + " ( "+ SelectColumns() + " ) " +
                                  "VALUES ("+SelectValues(s1, s2, s3, s4, s5, s6, s7)+")";

                SQLiteCommand createCommand = new SQLiteCommand(sqlQuery, dbConn);
                createCommand.ExecuteNonQuery();

                dbConn.Close();
            }
        } //this method inserts to the database

        public static void UpdateToTable(string s1, string s2, string s3, string s4, string s5, string s6, string s7)
        {
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery =   "UPDATE '"+ SelectTable +"' " +
                                    "SET "+ SelectValues(s1, s2, s3, s4, s5, s6, s7) +";";

                SQLiteCommand createCommand = new SQLiteCommand(sqlQuery, dbConn);
                createCommand.ExecuteNonQuery();

                dbConn.Close();
            }
        } //this method updates to the database

        public static void DeleteToTable(string s1, string s2, string s3, string s4, string s5, string s6, string s7)
        {
            using (SQLiteConnection dbConn = new SQLiteConnection(DBCONN))
            {
                dbConn.Open();

                string sqlQuery = "DELETE FROM '" + SelectTable + "' " +
                    SelectValues(s1, s2, s3, s4, s5, s6, s7) + ";";

                SQLiteCommand createCommand = new SQLiteCommand(sqlQuery, dbConn);
                createCommand.ExecuteNonQuery();

                dbConn.Close();
            }
        }  //this method deletes in the database

        public static string SelectColumns()
        {
            string sColumns = "";
            switch (SelectTable)
            {
                case ("Customers"):
                    sColumns = "CellNumber, FirstName, Surname, PhysicalAddress, City, UnitsBought";
                        break;
                case ("Orders"):
                    sColumns = "OrderNumber, BookName, BookPublisher, BookAuther, Quantity, Supplier";
                        break;
                case ("Books"):
                    sColumns = "Barcode, Title, Auther, Publisher, Stock, UnitsSold, Supplier";
                    break;
                case ("Suppliers"):
                    sColumns = "ID, Name, Address, City, Province, Counrty, UnitsAvailable";
                    break;
                case ("Employees"):
                    sColumns = "ID, Name, Surname, Position, IsStaff, UnitsSold, Salary";
                    break;
                case ("Roles"):
                    sColumns = "ID, AccountName, AccountPassword, Privilege";
                    break;
            }
            return sColumns;
        } // this method selects what columns are going to be used in a operation method

        public static string SelectValues(string s1, string s2, string s3, string s4, string s5, string s6, string s7)
        {
            string sValues = "";

            switch (SelectOperation)
            {
                case ("Insert"):
                    if (SelectTable == "Roles")
                    {
                        sValues = "'" + s1 + "', '" + s2 + "', '" + s3 + "', '" + s4 + "'";
                    }
                    else if (SelectTable == "Orders" || SelectTable == "Customers")
                    {
                        sValues = "'" + s1 + "', '" + s2 + "', '" + s3 + "', '" + s4 + "', '" + s5 + "', '" + s6 + "'";
                    }
                    else
                    {
                        sValues = "'" + s1 + "', '" + s2 + "', '" + s3 + "', '" + s4 + "', '" + s5 + "', '" + s6 + "', '" + s7 + "'";
                    }
                    break;
                case ("Update"):
                    switch (SelectTable)
                    {
                        case ("Customers"):
                            sValues = "FirstName = '" + s2 + "', Surname = '" + s3 + "', PhysicalAddress = '" + s4 + "', City = '" + s5 + "', UnitsBought = '" + s6 + "' " +
                                "WHERE CellNumber = '" + s1 + "'";
                            break;
                        case ("Orders"):
                            sValues = "BookName = '" + s2 + "', BookAuther = '" + s3 + "', BookPublisher = '" + s4 + "', Quantity = '" + s5 + "', Supplier = '" + s6 + "' " +
                                "WHERE OrderNumber = '" + s1 + "'";
                            break;
                        case ("Books"):
                            sValues = "Title = '" + s2 + "', Auther = '" + s3 + "', Publisher = '" + s4 + "', Stock = '" + s5 + "', UnitsSold'" + s6 + "', Supplier = '" + s7 + "' " +
                                "WHERE Barcode = '" + s1 + "'";
                            break;
                        case ("Suppliers"):
                            sValues = "Name = '" + s2 + "', Address = '" + s3 + "', City = '" + s4 + "', Province = '" + s5 + "', Country = '" + s6 + "', UnitsAvailable = '" + s7 + "' " +
                                "WHERE ID = '" + s1 + "'";
                            break;
                        case ("Employees"):
                            sValues = "Name = '" + s2 + "', Surname = '" + s3 + "', Position = '" + s4 + "', IsStaff = '" + s5 + "', UnitsSold = '" + s6 + "', Salary = '" + s7 + "' " +
                                "WHERE ID = '" + s1 + "'";
                            break;
                        case ("Roles"):
                            sValues = "AccountName = '" + s2 + "', AccountPassword = '" + s3 + "', Privilege = '" + s4 + "' " +
                                "WHERE ID = '" + s1 + "'";
                            break;
                    }
                    break;
                case ("Delete"):
                    switch (SelectTable)
                    {
                        case ("Customers"):
                            sValues = "WHERE CellNumber = '" + s1 + "'";
                            break;
                        case ("Orders"):
                            sValues = "WHERE OrderNumber = '" + s1 + "'";
                            break;
                        case ("Books"):
                            sValues = "WHERE Barcode = '" + s1 + "'";
                            break;
                        case ("Suppliers"):
                            sValues = "WHERE ID = '" + s1 + "'";
                            break;
                        case ("Employees"):
                            sValues = "WHERE ID = '" + s1 + "'";
                            break;
                        case ("Roles"):
                            sValues = "WHERE ID = '" + s1 + "'";
                            break;
                    }
                    break;                   
            }

            return sValues;

        } //this method concatinates string to be used in sql queries
    }
}

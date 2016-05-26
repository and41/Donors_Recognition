using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Call_Database
/// </summary>
public class Call_Database
{
    private const string conn = @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DonorsRec.mdf;Integrated Security = True";
    public DataTable dt;
    private DataTable _dt;
    public DataTable dtDonors;
    private DataTable _dtDonors;

    public Call_Database()
    {
        DataTable dt = new DataTable();
        DataTable dtDonors = new DataTable();
        Load(dt);
        _dt = dt;
        LoadDonors(dtDonors);
        _dtDonors = dtDonors;
    }

    public DataTable db
        {
        get{ return _dt; }
        set{ _dt = value; }
         }
    public DataTable dbDonors
    {
        get { return _dtDonors; }
        set { _dtDonors = value;}
    }
    
    public void Add(string Namebox, string Imagename, string Profiletxt)
    {
        using (SqlConnection conn = new SqlConnection(Call_Database.conn))
        {
            SqlCommand CmdSql = new SqlCommand("INSERT INTO [donors] (name, photo, profile) VALUES (@name, @photo, @profile)", conn);
            conn.Open();
            CmdSql.Parameters.AddWithValue("@Name", Namebox);
            CmdSql.Parameters.AddWithValue("@photo", "/Images/dbImages/" + Imagename);
            CmdSql.Parameters.AddWithValue("@profile", Profiletxt);
            CmdSql.ExecuteNonQuery();
            conn.Close();
        }
    }

    public void Delete(int deleteId)
    {
        using (SqlConnection conn = new SqlConnection(Call_Database.conn))
        {
            SqlCommand CmdSql = new SqlCommand("DELETE FROM [donors] WHERE[Id] = @deleteId",conn);
            conn.Open();
            CmdSql.Parameters.AddWithValue("@deleteId", deleteId);
            CmdSql.ExecuteNonQuery();
            conn.Close();
        }
    }

public void Load(DataTable dt)
    {
        SqlConnection conn = new SqlConnection(Call_Database.conn);
        string command = "SELECT * FROM SFunds";
        SqlCommand cmd = new SqlCommand(command, conn);
        SqlDataReader dr;
        conn.Open();
        dr = cmd.ExecuteReader();
        dt.Load(dr);
        conn.Close();
    }

    public void LoadDonors(DataTable dtDonors)
    {
        SqlConnection conn = new SqlConnection(Call_Database.conn);
        string command = "SELECT * FROM donors";
        SqlCommand cmd = new SqlCommand(command, conn);
        SqlDataReader drDonors;
        conn.Open();
        drDonors = cmd.ExecuteReader();
        dtDonors.Load(drDonors);
        conn.Close();
    }

}
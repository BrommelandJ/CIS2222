using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblResult.Visible = true;
        string name = txtName.Text;
        string address = txtAddress.Text;
        string email = txtEmail.Text;
        string age = txtAge.Text;
        lblResult.Text = "Name: " + name + "<br />" +
                         "Address: " + address + "<br />" +
                         "Email: " + email + "<br />" +
                         "Age: " + age + "<br />";
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblResult.Text = "";
        txtName.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtAge.Text = "";
    }
}
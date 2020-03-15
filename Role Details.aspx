<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Role Details.aspx.cs" Inherits="amitcw.Role_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <title>Resume - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet"/>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"/>

  <!-- Custom styles for this template -->
  <link href="css/resume.min.css" rel="stylesheet"/>

    
  
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none">Clarence Taylor</span>
      <span class="d-none d-lg-block">
        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/profile.jpg" alt=""/>
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Customer Details.aspx">Customer</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Staff Details.aspx">Staff Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Tour Guide Details.aspx">Tour Guide Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Package Details.aspx">Package Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#awards">Designation Details</a>
        </li>

           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Customer-Packaging Schedule Form.aspx">Customer-Package Schedule Form</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Staff-Role Mapping Schedule Form.aspx">Staff-Role Mapping Schedule Form</a>
        </li>
           
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Package_Activity Schedule Form.aspx">Package_Activity Schedule Form</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container-fluid p-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
        <h1 class="mb-0">Osama Tour
          <span class="text-primary">and Travel Company</span>
        </h1>
        <div class="subheading mb-5">Sanothimi, Bhaktaour
          <a href="mailto:name@email.com">Osama.laden@email.com</a>
        </div>
        <p class="lead mb-5">Osama Tour and Travel company is here to make your travel fun and easy.</p>
      </div>
    </section>

    <hr class="m-0"/>

    <section class="resume-section p-3 p-lg-5 d-flex justify-content-center" id="awards">
      <div class="w-100">
         
        <h2 class="mb-5">Designation Details</h2>
 </div>
        <div>
        <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;ROLE&quot;) VALUES (:ROLE_ID, :ROLE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT EMPLOYEE.EMPLOYEE_NAME, EMPLOYEE.EMPLOYEE_ADDRESS, EMPLOYEE.EMPLOYEE_CONTACT_NO, &quot;ROLE&quot;.ROLE_ID, &quot;ROLE&quot;.&quot;ROLE&quot; FROM EMPLOYEE, &quot;ROLE&quot; WHERE EMPLOYEE.ROLE_ID = &quot;ROLE&quot;.ROLE_ID " UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;ROLE&quot; = :ROLE WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                    <asp:Parameter Name="ROLE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ROLE" Type="String" />
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="433px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="EMPLOYEE_NAME" HeaderText="EMPLOYEE_NAME" SortExpression="EMPLOYEE_NAME" />
                    <asp:BoundField DataField="EMPLOYEE_ADDRESS" HeaderText="EMPLOYEE_ADDRESS" SortExpression="EMPLOYEE_ADDRESS" />
                    <asp:BoundField DataField="EMPLOYEE_CONTACT_NO" HeaderText="EMPLOYEE_CONTACT_NO" SortExpression="EMPLOYEE_CONTACT_NO" />
                    <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" ReadOnly="True" SortExpression="ROLE_ID" />
                    <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CellPadding="4" ForeColor="#333333" Height="151px" Width="428px">
                <EditItemTemplate>
                    EMPLOYEE_NAME:
                    <asp:TextBox ID="EMPLOYEE_NAMETextBox" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
                    <br />
                    EMPLOYEE_ADDRESS:
                    <asp:TextBox ID="EMPLOYEE_ADDRESSTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ADDRESS") %>' />
                    <br />
                    EMPLOYEE_CONTACT_NO:
                    <asp:TextBox ID="EMPLOYEE_CONTACT_NOTextBox" runat="server" Text='<%# Bind("EMPLOYEE_CONTACT_NO") %>' />
                    <br />
                    ROLE_ID:
                    <asp:Label ID="ROLE_IDLabel1" runat="server" Text='<%# Eval("ROLE_ID") %>' />
                    <br />
                    ROLE:
                    <asp:TextBox ID="ROLETextBox" runat="server" Text='<%# Bind("ROLE") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    EMPLOYEE_NAME:
                    <asp:TextBox ID="EMPLOYEE_NAMETextBox" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
                    <br />
                    EMPLOYEE_ADDRESS:
                    <asp:TextBox ID="EMPLOYEE_ADDRESSTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ADDRESS") %>' />
                    <br />
                    EMPLOYEE_CONTACT_NO:
                    <asp:TextBox ID="EMPLOYEE_CONTACT_NOTextBox" runat="server" Text='<%# Bind("EMPLOYEE_CONTACT_NO") %>' />
                    <br />
                    ROLE_ID:
                    <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                    <br />
                    ROLE:
                    <asp:TextBox ID="ROLETextBox" runat="server" Text='<%# Bind("ROLE") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    EMPLOYEE_NAME:
                    <asp:Label ID="EMPLOYEE_NAMELabel" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
                    <br />
                    EMPLOYEE_ADDRESS:
                    <asp:Label ID="EMPLOYEE_ADDRESSLabel" runat="server" Text='<%# Bind("EMPLOYEE_ADDRESS") %>' />
                    <br />

                    EMPLOYEE_CONTACT_NO:
                    <asp:Label ID="EMPLOYEE_CONTACT_NOLabel" runat="server" Text='<%# Bind("EMPLOYEE_CONTACT_NO") %>' />
                    <br />
                    ROLE_ID:
                    <asp:Label ID="ROLE_IDLabel" runat="server" Text='<%# Eval("ROLE_ID") %>' />
                    <br />
                    ROLE:
                    <asp:Label ID="ROLELabel" runat="server" Text='<%# Bind("ROLE") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
        </div>
    </form>
          </div>
          </section>
      </div>
    

   

 

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>

</body>

</html>

   


   

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tour Guide Details.aspx.cs" Inherits="amitcw.Tour_Guide_Details" %>

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
          <a class="nav-link js-scroll-trigger" href="#experience">Customer</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Staff Details.aspx">Staff Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#skills">Tour Guide Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Package Details.aspx">Package Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Role Details.aspx">Designation Details</a>
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
      </div>
      
    <hr class="m-0"/>

   

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="skills">
      <div class="w-100">
        <h2 class="mb-5">Tour Guide</h2>

        <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;GUIDE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID AND &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID" InsertCommand="INSERT INTO &quot;GUIDE&quot; (&quot;PACKAGE_ID&quot;, &quot;EMPLOYEE_ID&quot;) VALUES (:PACKAGE_ID, :EMPLOYEE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT EMPLOYEE.EMPLOYEE_NAME, EMPLOYEE.EMPLOYEE_ADDRESS, GUIDE.EMPLOYEE_ID, EMPLOYEE.EMPLOYEE_CONTACT_NO FROM EMPLOYEE, GUIDE WHERE EMPLOYEE.EMPLOYEE_ID = GUIDE.EMPLOYEE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="Decimal" />
                    <asp:Parameter Name="EMPLOYEE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="Decimal" />
                    <asp:Parameter Name="EMPLOYEE_ID" Type="Decimal" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="255px" Width="519px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="EMPLOYEE_NAME" HeaderText="EMPLOYEE_NAME" SortExpression="EMPLOYEE_NAME" />
                    <asp:BoundField DataField="EMPLOYEE_ADDRESS" HeaderText="EMPLOYEE_ADDRESS" SortExpression="EMPLOYEE_ADDRESS" />
                    <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" SortExpression="EMPLOYEE_ID" />
                    <asp:BoundField DataField="EMPLOYEE_CONTACT_NO" HeaderText="EMPLOYEE_CONTACT_NO" SortExpression="EMPLOYEE_CONTACT_NO" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
                <EditItemTemplate>
                    EMPLOYEE_NAME:
                    <asp:TextBox ID="EMPLOYEE_NAMETextBox" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
                    <br />
                    EMPLOYEE_ADDRESS:
                    <asp:TextBox ID="EMPLOYEE_ADDRESSTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ADDRESS") %>' />
                    <br />
                    EMPLOYEE_ID:
                    <asp:TextBox ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
                    <br />
                    EMPLOYEE_CONTACT_NO:
                    <asp:TextBox ID="EMPLOYEE_CONTACT_NOTextBox" runat="server" Text='<%# Bind("EMPLOYEE_CONTACT_NO") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    EMPLOYEE_NAME:
                    <asp:TextBox ID="EMPLOYEE_NAMETextBox" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
                    <br />
                    EMPLOYEE_ADDRESS:
                    <asp:TextBox ID="EMPLOYEE_ADDRESSTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ADDRESS") %>' />
                    <br />
                    EMPLOYEE_ID:
                    <asp:TextBox ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
                    <br />
                    EMPLOYEE_CONTACT_NO:
                    <asp:TextBox ID="EMPLOYEE_CONTACT_NOTextBox" runat="server" Text='<%# Bind("EMPLOYEE_CONTACT_NO") %>' />
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
                    EMPLOYEE_ID:
                    <asp:Label ID="EMPLOYEE_IDLabel" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
                    <br />
                    EMPLOYEE_CONTACT_NO:
                    <asp:Label ID="EMPLOYEE_CONTACT_NOLabel" runat="server" Text='<%# Bind("EMPLOYEE_CONTACT_NO") %>' />
                    <br />
                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
            </asp:FormView>
        </div>
           
    </form>
          </div>
          </section>
  

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>

</body>

</html>

    

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff-Role Mapping Schedule Form.aspx.cs" Inherits="amitcw.complex2" %>

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
          <a class="nav-link js-scroll-trigger" href="Role Details.aspx">Designation Details</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Customer-Packaging Schedule Form.aspx">Customer-Package Schedule Form</a>
        </li>
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#mapping">Staff-Role Mapping Schedule Form</a>
        </li>
          
           <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="Package-Activity Schedule Form.aspx">Package_Activity Schedule Form</a>
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

   

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="mapping">
      <div class="w-100">
        <h2 class="mb-5">Staff-Role Mapping Schedule Form</h2>
          <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="ROLE" DataValueField="ROLE_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource2_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM &quot;EMPLOYEE&quot; WHERE (&quot;ROLE_ID&quot; = :ROLE_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="ROLE_ID" PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLE_ID&quot;, &quot;ROLE&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" ReadOnly="True" SortExpression="EMPLOYEE_ID" />
                    <asp:BoundField DataField="EMPLOYEE_NAME" HeaderText="EMPLOYEE_NAME" SortExpression="EMPLOYEE_NAME" />
                    <asp:BoundField DataField="EMPLOYEE_ADDRESS" HeaderText="EMPLOYEE_ADDRESS" SortExpression="EMPLOYEE_ADDRESS" />
                    <asp:BoundField DataField="EMPLOYEE_CONTACT_NO" HeaderText="EMPLOYEE_CONTACT_NO" SortExpression="EMPLOYEE_CONTACT_NO" />
                    <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLE&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
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


    

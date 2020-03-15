<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Package Details.aspx.cs" Inherits="amitcw.Package_Details" %>

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
          <a class="nav-link js-scroll-trigger" href="#interests">Package Details</a>
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

    <hr class="m-0"/>

  

    <hr class="m-0"/>

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="interests">
      <div class="w-100">
        <h2 class="mb-5">Package Details</h2>
          <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;TOUR_GUIDE&quot;, &quot;TOTAL_DAYS&quot;, &quot;DIFFICULTY&quot;) VALUES (:PACKAGE_ID, :PACKAGE_NAME, :START_DATE, :END_DATE, :TOUR_GUIDE, :TOTAL_DAYS, :DIFFICULTY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGE_NAME&quot; = :PACKAGE_NAME, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE, &quot;TOUR_GUIDE&quot; = :TOUR_GUIDE, &quot;TOTAL_DAYS&quot; = :TOTAL_DAYS, &quot;DIFFICULTY&quot; = :DIFFICULTY WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="Decimal" />
                    <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="DateTime" />
                    <asp:Parameter Name="END_DATE" Type="DateTime" />
                    <asp:Parameter Name="TOUR_GUIDE" Type="String" />
                    <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
                    <asp:Parameter Name="DIFFICULTY" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="DateTime" />
                    <asp:Parameter Name="END_DATE" Type="DateTime" />
                    <asp:Parameter Name="TOUR_GUIDE" Type="String" />
                    <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
                    <asp:Parameter Name="DIFFICULTY" Type="String" />
                    <asp:Parameter Name="PACKAGE_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CellPadding="4" ForeColor="#333333" Height="278px" Width="601px">
                <EditItemTemplate>
                    PACKAGE_ID:
                    <asp:Label ID="PACKAGE_IDLabel1" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    START_DATE:
                    <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    TOUR_GUIDE:
                    <asp:TextBox ID="TOUR_GUIDETextBox" runat="server" Text='<%# Bind("TOUR_GUIDE") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    PACKAGE_ID:
                    <asp:TextBox ID="PACKAGE_IDTextBox" runat="server" Text='<%# Bind("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    START_DATE:
                    <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    TOUR_GUIDE:
                    <asp:TextBox ID="TOUR_GUIDETextBox" runat="server" Text='<%# Bind("TOUR_GUIDE") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PACKAGE_ID:
                    <asp:Label ID="PACKAGE_IDLabel" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:Label ID="PACKAGE_NAMELabel" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    START_DATE:
                    <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    TOUR_GUIDE:
                    <asp:Label ID="TOUR_GUIDELabel" runat="server" Text='<%# Bind("TOUR_GUIDE") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:Label ID="TOTAL_DAYSLabel" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:Label ID="DIFFICULTYLabel" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                    <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                    <asp:BoundField DataField="TOUR_GUIDE" HeaderText="TOUR_GUIDE" SortExpression="TOUR_GUIDE" />
                    <asp:BoundField DataField="TOTAL_DAYS" HeaderText="TOTAL_DAYS" SortExpression="TOTAL_DAYS" />
                    <asp:BoundField DataField="DIFFICULTY" HeaderText="DIFFICULTY" SortExpression="DIFFICULTY" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
      </div>
    </section>

  </div>

  
</body>
</html>

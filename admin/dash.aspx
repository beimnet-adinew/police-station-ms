<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="dash.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>mine | Dash</title>
    <style runat="server" >
         .box {
    display: flex;
    flex-direction: column;
    width: 280px;
    height: 170px;
    border: 1px solid black;
    margin: 30px;
    margin-left:20px;
    align-items: center;
    text-align: justify;
    padding: 10px;
    border-radius: 20px;
    background: linear-gradient(to top, rgb(255, 0, 0) 50%, rgb(70, 130, 180) 50%);
    background-size: 100% 200%;
    transition: all 0.8s;
}
    .box:hover {
        background-position: left bottom;
        color: white;
        border: none;
        box-shadow: 0 0 20px yellowgreen;
    }
    </style>

    <form runat="server">
     <div class="row" runat="server">
        <div class="box"  >
            <img src ="../assets/images/images emp.png" style="border-radius:50%"/>
          <h1 class="headings">Employees</h1>
            <asp:TextBox ID="employeno" runat="server" class="form-control" required="" style="text-align:center;font-size:30px" ></asp:TextBox>
        </div>
        <div class="box" >
            <img src ="../assets/images/download (2)pri.png" style="border-radius:50%"/>
          <h1 class="headings">Prisoners</h1>
            <asp:TextBox ID="prisonno" runat="server" class="form-control" required="" style="text-align:center;font-size:30px" ></asp:TextBox>
       
        </div>
        <div class="box"  >
            <img src="../assets/images/cell.png" style="border-radius:50%"/>
          <h1 class="headings">Available cells</h1>
            <asp:TextBox ID="cellno" runat="server" class="form-control" required="" style="text-align:center;font-size:30px" ></asp:TextBox>
            
        </div>
      </div> 


           <div class="card bg-gradient-success">
              <div class="card-header border-0">

                <h3 class="card-title">
                  <i class="far fa-calendar-alt"></i>
                  Calendar
                </h3>
                <!-- tools card -->
                <div class="card-tools">
                  <!-- button with a dropdown -->
                  <div class="btn-group">
                    <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" data-offset="-52">
                      <i class="fas fa-bars"></i>
                    </button>
                    <div class="dropdown-menu" role="menu">
                      <a href="#" class="dropdown-item">Add new event</a>
                      <a href="#" class="dropdown-item">Clear events</a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">View calendar</a>
                    </div>
                  </div>
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
                <!-- /. tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body pt-0">
                <!--The calendar -->
                <div id="calendar" style="width: 100%"></div>
              </div>
              <!-- /.card-body -->
            </div>
        </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/officermaster.Master" AutoEventWireup="true" CodeBehind="prisonersedit.aspx.cs" Inherits="WebApplication1.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
      
     <section class="content">
      <div class="container-fluid">
   
        <div class="card card-default">
          <div class="card-header">
                      <div class="card-header">
                  <asp:TextBox id="name"  runat="server" class="form-control" required="" style="width:460px"></asp:TextBox>
                  <asp:Button ID="adduser" runat="server" Text="Search" OnClick="search_clicked"  class="btn btn-success"/>
                 
              </div>
          </div>
         
          <div class="card-body">

               <div class="form-group">
                  <label>First Name:</label>
                   <asp:TextBox ID="first"  runat="server" class="form-control my-colorpicker1" ReadOnly="true" required=""></asp:TextBox>
                </div>
               <div class="form-group">
                  <label>Last Name:</label>
                   <asp:TextBox ID="last"  runat="server" class="form-control my-colorpicker1" ReadOnly="true" required=""></asp:TextBox>
                </div>
             
               <div class="form-group clearfix">
                   <label >SEX: </label>
                    
                     <asp:TextBox ID="genboo" runat="server"  class="form-control my-colorpicker1" ReadOnly="true" required=""></asp:TextBox>
                      
                    </div>
              
            <div class="form-group">
                  <label>Cell:</label>
                   <asp:TextBox runat="server" ID="cellboo" class="form-control select2" style="width: 100%" ReadOnly="true" required=""></asp:TextBox>
                </div>
          </div>
              <div class="form-group">
                  <label>Age:</label>
                   <asp:TextBox ID="ageboo" runat="server" class="form-control" ReadOnly="true" required=""></asp:TextBox>
                </div>
           <div class="form-group">
                  <label>Address:</label>
               <asp:TextBox ID="addressboo" runat="server" class="form-control my-colorpicker1" ReadOnly="true" required=""></asp:TextBox>
                </div>
             <div class="form-group">
                  <label>Emergency:</label>
                
                   <asp:TextBox ID="emergencyboo"  runat="server" class="form-control my-colorpicker1" ReadOnly="true" required=""></asp:TextBox>
                </div>
            <div class="form-group">
                        <label for="emerphone">Emergency Number:</label>
                     
                 <asp:TextBox ID="emerphone"  runat="server" class="form-control" ReadOnly="true" required=""></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="crimeboo">Crime Committed:</label>
                  
                          <asp:TextBox ID="crimeboo" runat="server" class="form-control"  ReadOnly="true" required=""></asp:TextBox>
                      </div>
             <div class="col-lg-6">
                    <div class="btn-group w-100">
                   <asp:Button ID="adding" runat="server" Text="Save" OnClick="Save_clicked"  class="btn btn-primary col start"/>
                     
                    <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Edit_clicked"  class="btn btn-primary col start"/>
                        
                      
                    </div>
                  </div>
            
        </div>
            </div>
    </section>
    </form>

   <script src="../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="../assets/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="../assets/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="../assets/plugins/moment/moment.min.js"></script>
<script src="../assets/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="../assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="../assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="../assets/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="../assets/plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="../assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/dist/js/demo.js"></script>
</asp:Content>

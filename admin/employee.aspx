<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<style>

#editform{
display:none;
}

</style>--%>
<title>mine | employee</title>
    <form runat="server">
    
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           
            <!-- /.card -->
                 <div class="card">
              <div class="card-header">
                <h3 class="card-title">DataTable with default features</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <div class="card">
              <div class="card-header">
                <%--<h3 class="card-title">Search:</h3>--%>
                 <%--<input type="text" id="namebox" class="form-control" />--%>
                  <%--<asp:TextBox ID="namebox" onkeyup="tablesearch()" runat="server" class="form-control" required="" style="height:60px;margin:10px;font-size:20px"></asp:TextBox>--%>
                 <%-- <asp:Button ID="adduser" runat="server" Text="Edit"  class="btn btn-success"/>--%>
                  <%--<input type="button" ID="add" value="Edit" runat="server" onclick="button_clicked" style="width:50px" />--%>
                  <asp:Button ID="addusers" runat="server" Text="Edit" OnClick="button_clicked" class="btn btn-primary"/>
              </div>
             
              <div class="card-body">
               
              </div>
              
            </div>
                <table id="table" class="table table-bordered table-dark" style="display:normal">
                    <thead>
                        <tr>
                            <th data-field="state" data-checkbox="true"></th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Age</th>
                            <th>Address</th>
                            <th>Sex</th>
                        </tr>
                    </thead>
                    <tbody id="Tbody1" runat="server">

                    </tbody>
                    <tfoot>
                        <tr>
                            <th data-field="state" data-checkbox="true"></th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Age</th>
                            <th>Address</th>
                            <th>Sex</th>
                        </tr>
                    </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->



          


      </div>
      <!-- /.container-fluid -->
    </section>

   <%-- <table  class="table table-striped table-dark" id="table" data-filter-control="true" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true" data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar" style="display:normal">
                                            <thead>
                                            <tr>
                                  <th data-field="state" data-checkbox="true"></th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Role</th>
                                     <th>Age</th>
                                     <th>Address</th>
                                    <th>Sex</th>
                                </tr>
                            </thead>
                                          
                                 <tbody id="listofuser" runat="server">
                         
                               
                                   </tbody>
                                             
                                            
                                        </table>--%>

        </form>

    <script>

document.getElementById("add").addEventListener("click",function(){
var box = getElementById("editform");
if(box.style.display=="none"){
box.style.display=="block"
}
else{
box.style.display=="none"
}
});
        
        
    </script>

    <script src="../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../assets/plugins/jszip/jszip.min.js"></script>
<script src="../assets/plugins/pdfmake/pdfmake.min.js"></script>
<script src="../assets/plugins/pdfmake/vfs_fonts.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="../assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>

  $(function () {
    $("#example1").DataTable({
      
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</asp:Content>

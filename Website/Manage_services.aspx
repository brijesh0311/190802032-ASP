<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="Manage_services.aspx.cs" Inherits="Website.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
    <section class="wrapper">
        
        <div class="form-w3layouts">
            <!-- page start-->
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Services Details
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Title</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Title"></asp:TextBox>


                                    </div>   

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Description</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                                         <asp:TextBox ID="TextBox2" runat="server" placeholder="Description" Rows="2" TextMode="MultiLine"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Status</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Height="40px" RepeatLayout="Flow">
                                            <asp:ListItem Selected="True" Value="1">Active   </asp:ListItem>
                                            <asp:ListItem Value="0">Deactive</asp:ListItem>
                                        </asp:RadioButtonList>

                                    </div>
                                
                                    <div>
                                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                    </div>
                                    <div>
                                    <%--<button type="submit" class="btn btn-info">Submit</button>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-info" OnClick="Button1_Click" />
                                    </div>
                                    <div class="checkbox">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:TemplateField HeaderText="ID">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("service_Id") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Title">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal9" runat="server" Text='<%# Eval("Title") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal10" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal11" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>   
                                    </div>
                                    
                                
                            </div>

                        </div>
                    </section>

                </div>
            </div>
            
            <!-- page end-->
        </div>
            
    </section>


</asp:Content>

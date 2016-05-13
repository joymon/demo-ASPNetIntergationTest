﻿<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs"
    Inherits="JoymonOnline.Blogs" Title="Joymon Online | Blogs" %>

<%@ OutputCache CacheProfile="Cache1Day" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="Server">
    <div class="shim column"></div>

    <div class="page" id="links">
        <div id="content">
            <h3>Blogs</h3>
            <p>This is my blogosphere.Here you can find few of my blogs with their latest posts.You may read all by clicking on the coresponding URL.</p>
            <div>
                <h4><a href="http://joymonscode.blogspot.com/" target="_blank">Joymon v/s Code</a></h4>
                <div class="blogItems">
                    <asp:Repeater runat="server" DataSourceID="JoymonsCodeObjectDataSource">
                        <ItemTemplate>
                            <div class="blogItem">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl='<%#Eval("Links[0].Uri") %>'>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title.Text") %>'></asp:Label>
                                            </asp:HyperLink>
                                        </td>
                                        <td class="postedDate">
                                            <asp:Label ID="Label1" runat="server" Text='<%#String.Format("{0:dd MMM yyyy}", Eval("PublishDate")) %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label3" runat="server" Text='<%# TrimSubject(DataBinder.Eval(Container.DataItem, "Summary.Text").ToString())  %>'></asp:Label>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <br />
            <div>
                <h4><a href="http://joyfulwpf.blogspot.com" target="_blank">JoyfulWPF</a></h4>
                <div class="blogItems">
                    <asp:Repeater runat="server" DataSourceID="JoyfulWPFObjectDataSource">
                        <ItemTemplate>
                            <div class="blogItem">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:HyperLink runat="server" Target="_blank" NavigateUrl='<%#Eval("Links[0].Uri") %>'>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title.Text") %>' />
                                            </asp:HyperLink>
                                        </td>
                                        <td class="postedDate">
                                            <asp:Label ID="Label1" runat="server" Text='<%#String.Format("{0:dd MMM yyyy}", Eval("PublishDate")) %>' />
                                        </td>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Label ID="Label3" runat="server" Text='<%# TrimSubject(DataBinder.Eval(Container.DataItem, "Summary.Text").ToString())  %>' />
                                            </td>
                                        </tr>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

            <br />
            <div>
                <h4><a href="http://silverlightedweb.blogspot.com" target="_blank">SilverlightedWeb</a></h4>
                <div class="blogItems">
                    <asp:Repeater runat="server" DataSourceID="SilverlightedWebObjectDataSource">
                        <ItemTemplate>
                            <div class="blogItem">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:HyperLink runat="server" Target="_blank" NavigateUrl='<%#Eval("Links[0].Uri") %>'>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title.Text") %>' />
                                            </asp:HyperLink>
                                        </td>
                                        <td class="postedDate">
                                            <asp:Label ID="Label1" runat="server" Text='<%#String.Format("{0:dd MMM yyyy}", Eval("PublishDate")) %>' />
                                        </td>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Label ID="Label3" runat="server" Text='<%# TrimSubject(DataBinder.Eval(Container.DataItem, "Summary.Text").ToString())  %>' />
                                            </td>
                                        </tr>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <asp:ObjectDataSource ID="JoyfulWPFObjectDataSource" runat="server"
        SelectMethod="GetPosts" TypeName="Joymononline.BlogDataProvider">
        <SelectParameters>
            <asp:Parameter DefaultValue="http://feeds2.feedburner.com/Joyfulwpf"
                Name="FeedUrl" Type="String" />
            <asp:Parameter DefaultValue="20" Name="count" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="SilverlightedWebObjectDataSource" runat="server"
        SelectMethod="GetPosts" TypeName="Joymononline.BlogDataProvider">
        <SelectParameters>
            <asp:Parameter DefaultValue="http://feeds2.feedburner.com/silverlightedweb"
                Name="FeedUrl" Type="String" />
            <asp:Parameter Name="count" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="JoymonsCodeObjectDataSource" runat="server"
        SelectMethod="GetPosts" TypeName="Joymononline.BlogDataProvider">
        <SelectParameters>
            <asp:Parameter DefaultValue="http://feeds2.feedburner.com/JoymonsCode"
                Name="FeedUrl" Type="String" />
            <asp:Parameter Name="count" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>


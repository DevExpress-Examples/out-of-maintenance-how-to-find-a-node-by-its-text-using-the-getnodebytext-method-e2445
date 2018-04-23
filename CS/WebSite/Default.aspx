<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v10.2, Version=10.2.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v10.2, Version=10.2.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxTreeView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<!--region #Markup-->
    <script>
    function FindNode(s, e) {

        //Check the input data
        if (textbox.GetText()==''){
            alert('Please, input name of a node');
            return;
        }
        if (treeview.GetNodeByText(textbox.GetText()) == null){
            alert('The ' + textbox.GetText() + ' node was not found');
            return;
        }
        var node = treeview.GetNodeByText(textbox.GetText());

        //Iterate through the parent nodes to expand them
        var nodesparent = node.parent;
        while(nodesparent != null) {
            nodesparent.SetExpanded(true);
            nodesparent = nodesparent.parent
        }

        //Select the found node
        treeview.SetSelectedNode(node);
    }    
    </script>
    <dx:ASPxTreeView ID="ASPxTreeView1" runat="server" ClientInstanceName="treeview" DataSourceID="XmlDataSource1" AllowSelectNode="True">
    </dx:ASPxTreeView>
    <br />
    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Input the node's text (e.g. 'News')">
    </dx:ASPxLabel>
    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientInstanceName="textbox" Width="170px">
    </dx:ASPxTextBox>
    <br />
    <dx:ASPxButton ID="ASPxButton1" runat="server" ClientInstanceName="searchbutton"
        Text="Find" AutoPostBack="False">
        <ClientSideEvents Click="FindNode"/>
    </dx:ASPxButton>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/MenuTabbedMenu.xml"
        OnTransforming="XmlDataSource1_Transforming" XPath="/mainmenu/item">
    </asp:XmlDataSource>
<!--endregion #Markup-->
    </div>
    </form>
</body>
</html>

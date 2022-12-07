<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxTreeView ID="ASPxTreeView1" runat="server" ClientInstanceName="Tree" DataSourceID="XmlDataSource1" AllowSelectNode="True">
		</dx:ASPxTreeView>
		<dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientInstanceName="TB" Width="170px">
		</dx:ASPxTextBox>
		&nbsp; &nbsp;&nbsp;
		<dx:ASPxButton ID="ASPxButton1" runat="server" ClientInstanceName="SearchButton"
			Text="Find" AutoPostBack="False">
			<ClientSideEvents Click="function(s, e) {

//Check the input data
if (TB.GetText()==&quot;&quot;)
{alert(&quot;Please, input node's name&quot;);
return;
}

if (Tree.GetNodeByText(TB.GetText()) == null)
{alert(&quot;The &quot; + TB.GetText() + &quot; node was not found&quot;);
return;
}

//Interate through the found node's parent nodes to expand them
var Node = Tree.GetNodeByText(TB.GetText()).parent;
while(Node != null) {
Node.SetExpanded(true);
Node = Node.parent
}

//Select the found node
Tree.SetSelectedNode(Tree.GetNodeByText(TB.GetText()));
}" 
/>

		</dx:ASPxButton>
		&nbsp; &nbsp;&nbsp; &nbsp;
		<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/MenuTabbedMenu.xml"
			OnTransforming="XmlDataSource1_Transforming" XPath="/mainmenu/item"></asp:XmlDataSource>

	</div>
	</form>
</body>
</html>
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to find a node by its text using the GetNodeByText method


<p>This example demonstrates how to find a node by its text on the client side.<br />
In the example we use the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewScriptsASPxClientTreeView_GetNodeByTexttopic"><u>GetNodeByText</u></a> method to search for the required node. If a node has been found, the code iterates through parent nodes to expand them using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewScriptsASPxClientTreeViewNode_SetExpandedtopic"><u>SetExpanded</u></a> method. After that the found note is selected using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewScriptsASPxClientTreeView_SetSelectedNodetopic"><u>SetSelectedNode</u></a> method. Note, that the ASPxTreeView's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewASPxTreeView_AllowSelectNodetopic"><u>AllowSelectNode</u></a> property is set to true to allow node selection.</p>

<br/>



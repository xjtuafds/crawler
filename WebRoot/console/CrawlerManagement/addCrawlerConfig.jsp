<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>爬虫配置管理--增加配置</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
    <div class="list">
     <div class="head">增加聚类配置</div>
     <hr id="line" />
    <form action="/crawler/crawler/crawlerConfig_add" method="get" >
     <ul>
        <li><span id="lable">线程个数：</span><input type="text" name="crawlerConfig.ccThreads" value="" /></li>
        <li><span id="lable">栏目站点：</span>
			<s:checkboxlist list="#request.crawlerSeedsMap"  listKey="key" 
			listValue="value" name="crawlerConfig.ccWebSeeds"></s:checkboxlist></li>
       
       
     </ul>
     </form>
     <ul id="commit">
        <li><span id="lable"><input type="submit" value="增加"></span></li>
     </ul>
  </div>

</body>
</html>

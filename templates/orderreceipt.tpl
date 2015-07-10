<h1><center>交易成功</center></h1>
您的订单号为 {CUST_ID} - {ORDER_ID}。 
请牢记您的订单号。
<br>
<p>您购买的商品将配送至：
<br><b>
 {NICKNAME}
<br>{COUNTRY} {STATE} {CITY} {ADDRESS} {ZIPCODE}
</b>
<br>
<br>
<p>订单详情：
<!-- BEGIN items -->
<table border=0 width=100% cellpadding=0 cellspacing=5>
<tr>
   <td><b><center>数量</center></b></td>
   <td><b><center>品名</center></b></td>
   <td><b><center>单价</center></b></td>
   <td><b><center>总计</center></b></td>
</tr>
<!-- BEGIN row -->
<tr>
   <td><center>{QTY}</center></td>
   <td bgcolor="silver"><center>{WINE}</center></td>
   <td><center>{PRICE}</center></td>
   <td bgcolor="gray"><center>{TOTAL}</center></td>
</tr>
<!-- END row -->
<tr></tr>
<tr><center>
   <td colspan=2><i><b>订单总计：{ORDER_TOTAL}</b></i></td>
</center></tr>
</table>
<!-- END items -->
<p><i><center>一封确认邮件已经发送到您的邮箱。感谢您在本店购物！</center></i>

<!-- BEGIN cart -->
<h1><center>您的购物车</center></h1>
<form action="{S_UPDATECART}" method="GET">
<table width="100%" border="0" cellpadding="0" cellspacing="10">
   <tr>
      <th><center>数量</center></th>
      <th><center>品名</center></th>
      <th><center>单价</center></th>
      <th><center>总计</center></th>
   </tr>
<!-- BEGIN item -->
   <tr>
       <td><center><input type="text" size=5 name="{QUANTITY_NAME}" 
            value="{QUANTITY_VALUE}"></center></td>
       <td bgcolor="silver"><center>{WINE}</center></td>
       <td><center>${ITEM_PRICE}</center></td>
       <td bgcolor="gray"><center>${TOTAL_VALUE}</center></td>
   </tr>
<!-- END item -->
</table>
<center><input type="submit" name="update" value="更新数量"></center>
<br>
   <tr></tr>
   <tr>
      <td><b><center><i>{TOTAL_ITEMS}</i> 件商品，总计 <i>${TOTAL_COST}</i></center></b></td>
      <td></td>
   </tr>


</form>
<!-- END cart -->
<!-- BEGIN emptycart -->
<h1><font color="red">{TEXT}</font></h1>
<!-- END emptycart -->

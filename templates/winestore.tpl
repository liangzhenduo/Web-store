<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <title>{TITLE}</title>
</head>
<body bgcolor="white">
<p align="center"><img scr="/store/templates/banner.jpg" width="1200" height="100"></p>
<p align="right">
  <b>{LOGIN_STATUS}</b></p>
<!-- BEGIN cartheader -->
<table>
  <tr>
    <td><a href="{S_SHOWCART}" onMouseOut="cart.src='{I_CART_OFF}'"
                               onMouseOver="cart.src='{I_CART_ON}'">
        <img src="{I_CART_OFF}" vspace=0 border=0 
             alt="cart picture" name="cart"></a>
    </td>

    <td>购物车总计: ${TOTAL} ({COUNT} 件商品)
     </td>

   </tr>
</table>
<!-- END cartheader -->
<!-- BEGIN message -->
<b><font color="red">{INFO_MESSAGE}</font></b>
<!-- END message -->
{PAGE_BODY}
<!-- BEGIN buttons --><center>
<table>
<tr>
<!-- BEGIN form -->
  <td><form action="{ACTION}" method="GET">
    <input type="submit" name="{NAME}" value="{VALUE}">
  </form></td>
<!-- END form -->
</tr>
</table></center>
<!-- END buttons -->
<br>
</body>
</html>

<h1>今日推荐</h1>
<table width="60%">
  
</table>
<table border=0>
<!-- BEGIN row -->
  <tr>
    <td bgcolor="maroon"><b><font color="white">
    {YEAR} {WINERY} {WINE} {VARIETIES}</font></b>
    </td>
  </tr>

  <tr>
    <td bgcolor="silver"><b>Review: </b>{DESCRIPTION}
    </td>
  </tr>

  <tr>
    <td bgcolor="gray">
    <b>价格: </b>${BOTTLE_PRICE} / 瓶
    </td>
  </tr>

  <tr>
    <td align="right">
<!-- BEGIN link -->
    <a href="{SCRIPT}?qty={QTY}&amp;wineId={WINE_ID}">{STRING}</a>&nbsp;
<!-- END link -->
    </td>
  </tr>
  <tr>
    <td></td>
  </tr>
<!-- END row -->
</table>

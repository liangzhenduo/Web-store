<!-- BEGIN inputform -->
<form method="{METHOD}" action="{S_VALIDATE}">
<h1><center>{FORMHEADING}</center></h1>
<p>
<center><table>
<col span="1" align="right">
<!-- BEGIN widget -->
<!-- BEGIN select -->
   <tr>
      <td><font>{SELECTTEXT}</font></td>
      <td><select name="{SELECTNAME}">
<!-- BEGIN option -->
      <option{SELECTED} value="{OPTIONVALUE}">{OPTIONTEXT}
<!-- END option -->
      </select></td>
   </tr>
<!-- END select -->
<!-- BEGIN mandatoryinput -->
   <tr>
      <td><font>{MINPUTTEXT}</font>
      </td>
      <td>
<!-- BEGIN mandatoryerror -->
      <font>{MERRORTEXT}</font><br>
<!-- END mandatoryerror -->      
         <input type="text" name="{MINPUTNAME}" 
          value="{MINPUTVALUE}" size={MINPUTSIZE}>
      </td>
  </tr>
<!-- END mandatoryinput -->
<!-- BEGIN optionalinput -->
   <tr>
      <td>{OINPUTTEXT}
      </td>
      <td>
<!-- BEGIN optionalerror -->
      <font>{OERRORTEXT}</font><br>
<!-- END optionalerror -->      
         <input type="text" name="{OINPUTNAME}" 
          value="{OINPUTVALUE}" size={OINPUTSIZE}>
      </td>
  </tr>
<!-- END optionalinput -->
<!-- BEGIN passwordinput -->
   <tr>
      <td><font>{PINPUTTEXT}</font>
      </td>
      <td>
<!-- BEGIN passworderror -->
      <font>{PERRORTEXT}</font><br>
<!-- END passworderror -->      
         <input type="password" name="{PINPUTNAME}" 
          value="{PINPUTVALUE}" size={PINPUTSIZE}>
      </td>
  </tr>
<!-- END passwordinput -->
<!-- END widget -->
<tr>
   <td><input type="submit" value="更新"></td>
</tr>
</table></center>
</form>
<!-- END inputform -->

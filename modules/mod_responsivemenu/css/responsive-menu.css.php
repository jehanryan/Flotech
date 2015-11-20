<?php 
/**
 * @subpackage	responsiveMenu
 * @copyright	Copyright (C) Cecil Gupta. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
 
header("Content-type: text/css");

$subItemWidth = $_GET['subItemWidth'];
$MenuBG = $_GET['MenuBG'];
$MenuBG2 = $_GET['MenuBG2'];
$MenuBG3 = $_GET['MenuBG3'];
$MenuHoverBGClr = $_GET['MenuHoverBGClr'];
$outlineClr = $_GET['outlineClr'];
$linksClr = $_GET['linksClr'];
$linksHoverClr = $_GET['linksHoverClr'];

?>
body,nav,ul,li,a{margin:0;padding:0;}
body{font-family:"Helvetica Neue", Helvetica, Arial, sans-serif;}
a{text-decoration:none;}
.container{width:90%;max-width:900px;margin:10px auto;}
.toggleMenu{display:none;background:#666;color:#fff;padding:10px 15px;}
.responsiveMenu{list-style:none;zoom:1;background:#<?php echo $MenuBG; ?>;}
.responsiveMenu:before,.responsiveMenu:after{content:" ";display:table;}
.responsiveMenu:after{clear:both;}
.responsiveMenu ul{list-style:none;width:<?php echo $subItemWidth; ?>px;margin:0;padding:0;}
.responsiveMenu a{color:#<?php echo $linksClr; ?>; }
.responsiveMenu a:hover, .responsiveMenu li.active > a{color:#<?php echo $linksHoverClr; ?>;}
.responsiveMenu li{position:relative;}
.responsiveMenu > li{float:left;}
.responsiveMenu > li > .parent{background-image:url(../images/downArrow.png);background-repeat:no-repeat;background-position:right;}
.responsiveMenu > li > a{display:block;}
.responsiveMenu li ul{position:absolute;left:-9999px;}
.responsiveMenu > li.hover > ul{left:0;}
.responsiveMenu li li.hover ul{left:100%;top:0;}
.responsiveMenu li li a{display:block;background:#<?php echo $MenuBG2;?>;position:relative;z-index:100;border-top:1px solid #<?php echo $outlineClr; ?>;}
.responsiveMenu li li li a{background:#<?php echo $MenuBG3; ?>;z-index:200;border-top:1px solid #<?php echo $outlineClr; ?>;}
.responsiveMenu li li a.parent{background-image:url(../images/upArrow.png);background-repeat:no-repeat;background-position:95% 50%;}
.responsiveMenu li a:hover, .responsiveMenu li.active > a{background-color:#<?php echo $MenuHoverBGClr; ?>;}

@media screen and (max-width:768px) {
.active{display:block;}
.responsiveMenu > li{float:none;border-top:1px solid #<?php echo $outlineClr; ?>;}
.responsiveMenu > li > .parent{background-position:95% 50%;}
.responsiveMenu li li .parent{background-image:url(../images/downArrow.png);background-repeat:no-repeat;background-position:95% 50%;}
.responsiveMenu ul{display:block;width:100%;}
.responsiveMenu > li.hover > ul,.responsiveMenu li li.hover ul{position:static;}
.responsiveMenu li li a.parent{background-image:url(../images/downArrow.png);background-repeat:no-repeat;background-position:95% 50%;}
}

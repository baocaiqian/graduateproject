 var deleteshare=document.getElementByClass("deleteshare");
 deleteshare.οnclick=function () {
     var msg = "您确定要退出当前账号吗？";
        if (confirm(msg)==true){
			return true;  //你也可以在这里做其他的操作
		}else{
			return false;
		}
}
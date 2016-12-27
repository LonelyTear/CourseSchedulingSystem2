package com.bobo.common;

public class CountTool {
	
	public static int needCount(int all , int max){
		 int needCount = 0 ;//当前年级需要开的某门科目的班数
		 int divide =  all/max ;//除
		 int mod = all%max ;//余
		 if(mod > 0) {//若余数>0 则加1
			 needCount = divide+1;
		}else{
			needCount = divide;
		}
		 return needCount;
	}
	
}

package indi.wrenn.studentsystem.util;

import java.util.Calendar;
import java.util.Vector;

public class Tools {

	//获取年级
		public static Vector<String> CreateGrade(){
			Vector<String> vector = new Vector<String>();
			vector.add("");	//添加一个空选项 
			Calendar c = Calendar.getInstance();
			int Year = c.get(Calendar.YEAR);
			for(int i=0;i<9;i++){
				vector.add(String.valueOf(Year--));
			}
			return vector;
			
		}
		
		
		//生成学生学号的方法(学号：department+major+grade+classe+num)//所属院系ID +专业编号+年级+班级+学号
		public static String CreateID(String grade,String classe,String major,String department,String num){
/*			String id = department+major+grade.charAt(2)+""+grade.charAt(3)+classe+num;//04+11+23+1+40 2015 30 2 4 40 年份2015+所属院系ID30+专业编号2+班级+学号*/
			String id = grade+department+major+classe+num;//2015 30
			return id;
		}
}

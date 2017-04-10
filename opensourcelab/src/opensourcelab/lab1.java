package opensourcelab;
import java.util.Scanner;

public class lab1 {

	public static void main(String[] args) {
		// TODO Auto-generated stub

		Scanner s = new Scanner(System.in);
		
		int name,myself;
		
		while(true){
		System.out.println("1을 누르면 이름");
		name = s.nextInt();
		
		if(name==1){
		System.out.println("윤인아");
		break;}
		}
		
		while(true){
		System.out.println("2를 누르면 자기소개");
		myself = s.nextInt();
		
		if(myself==2){
		System.out.println("영미언어문화학과 13학번 2013049595");
		break;}
		
		}
	}
	

}

package ch2;

import java.util.Scanner;

public class ThreeSixNineGame {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("1~99������ ������ �Է��ϼ���>>");
		Scanner in = new Scanner(System.in);
		int n = in.nextInt();
		int first = n/10;
		int second = n%10;
		if(first==3||first==6||first==9) {
			if(second==3||second==6||second==9)
				System.out.println("�ڼ�¦¦");
			else
				System.out.println("�ڼ�¦");
		}
	    else {
	    	if(second==3||second==6||second==9)
	    		System.out.println("�ڼ�¦");
	    	else
	    		System.out.println("�ڼ�����");	
	    }
		in.close();
	}
}

package ch3;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Practice3_4 {

	public static void main(String[] args) {
		String day [] = {"��","��","ȭ","��","��","��","��"};
		Scanner in = new Scanner(System.in);
		while(true) {
			try {
				System.out.print("������ �Է��ϼ���>>");
				int a = in.nextInt();
				if(a>=0) {
					System.out.println(day[a%7]);
				}
				else if(a<0) {
					System.out.println("���α׷��� �����մϴ�.");
					break;
				}
			}
			catch(InputMismatchException e){
				System.out.println("���! ���� �Է����� �ʾҽ��ϴ�.");
				in.next();
				continue;
			}
		}
	}
}

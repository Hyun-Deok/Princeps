package ch3;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Practice3_3 {

	public static void main(String[] args) {
		System.out.print("������ �Է��ϼ���>>");
		Scanner in = new Scanner(System.in);
		try {
			int a = in.nextInt();
			if(a%2==0) {
			System.out.println("¦��");
			}
			else {
			System.out.println("Ȧ��");
			}
		}
		catch(InputMismatchException e) {
				System.out.println("���� �Է����� �ʾ� ���α׷��� �����մϴ�.");
		}
		in.close();
	}
}

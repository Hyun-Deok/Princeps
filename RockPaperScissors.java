package ch2;

import java.util.Scanner;

public class RockPaperScissors {

	public static void main(String[] args) {
		System.out.println("���� ���� �� �����Դϴ�. ����, ����, �� �߿��� �Է��ϼ���");
		Scanner scanner = new Scanner(System.in);
		String a = scanner.next();
		String b = scanner.next();
		System.out.println("ö�� >> "+a);
		System.out.println("���� >> "+b);
		
		if(a.equals("����")) {
			if(b.equals("����"))
				System.out.println("���� �̰���ϴ�.");
			else if(b.equals("����"))
				System.out.println("�����ϴ�.");
			else
				System.out.println("ö���� �̰���ϴ�.");
		}
		else if(a.equals("����")) {
			if(b.equals("��"))
				System.out.println("���� �̰���ϴ�.");
			else if(b.equals("����"))
				System.out.println("�����ϴ�.");
			else
				System.out.println("ö���� �̰���ϴ�.");
		}
		else {
			if(b.equals("����"))
				System.out.println("���� �̰���ϴ�.");
			else if(b.equals("��"))
				System.out.println("�����ϴ�.");
			else
				System.out.println("ö���� �̰���ϴ�.");
		}
		scanner.close();
	}
}

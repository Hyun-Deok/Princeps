package ch2;

import java.util.Scanner;

public class ScoreSwitch {

	public static void main(String[] args) {
		int jumsu, mok;
		char grade;
		System.out.println("������ �Է��ϼ���");
		Scanner in = new Scanner(System.in);
		jumsu = in.nextInt();
		mok = jumsu / 10;
		switch(mok) {
			case 10: case 9:
				grade = 'A'; break;
			case 8:
				grade = 'B'; break;
			case 7: 
				grade = 'C'; break;
			case 6:
				grade = 'D'; break;
			default:
				grade = 'F';
		}
		in.close();
		System.out.println(jumsu + "�� ���� ������ : " + grade + "�Դϴ�.");
		System.out.println("��� ����~~");
	}
}

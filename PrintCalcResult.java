package ch2;

import java.util.Scanner;

public class PrintCalcResult {

	public static void main(String[] args) {
		System.out.println("�ΰ���(��ǰ�ݾ��� 10%)�� �ܵ�(Ű����� �Է¹��� �� - �ΰ���)�� ����Ͽ� ����ϼ���");
		System.out.println("���� ���� ��ǰ�� �Ѿ��� �Է��ϼ���");
		
		Scanner scanner = new Scanner(System.in);
		long money = scanner.nextLong();
		long total = scanner.nextLong();
		double tex = total*0.1;
		double change = money-total-tex;
		System.out.println("���� �� : "+money+'\n'+"��ǰ�� �Ѿ� : "+total+'\n'+"�ΰ��� : "+tex+'\n'+"�ܵ� : "+change);
		
		scanner.close();
	}

}

package ch3;

import java.util.Scanner;

public class DivideByZeroHanding {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int dividend;    // ������
		int divisor;     // ������
		
		System.out.println("�������� �Է��ϼ��� : ");
		dividend = scanner.nextInt();
		System.out.println("�������� �Է��ϼ��� : ");
		divisor = scanner.nextInt();
		try {
		System.out.println(dividend + "�� " + divisor + "�� ������ ���� " + dividend/divisor + "�Դϴ�.");
		}            // divisor�� 0�� ��� ArithmeticException���� �߻�
		catch(ArithmeticException e) {      // ArithmeticException ���� ó�� �ڵ�
			System.out.println("0���� ���� �� �����ϴ�.");
		}
		finally {
			scanner.close();
		}
	}

}

package ch2;

import java.util.Scanner;

public class Arithmetic {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("���� �Է��ϼ��� >> ");
		double op1 = scanner.nextDouble();
		String operator = scanner.next();
		double op2 = scanner.nextDouble();
		double result = 0;
		switch(operator) {
		case "+" : result = op1 + op2; break;
		case "-" : result = op1 - op2; break;
		case "*" : result = op1 * op2; break;
		case "/" :
			if(op2==0) {
				System.out.println("0���� ���� �� �����ϴ�.");
				scanner.close();
				return;			
			}
			result = op1 / op2;
			break;
		default : System.out.println("�����ȣ�� �߸��Ǿ����ϴ�.");
		}
		System.out.println("���� ��� "+result);
		scanner.close();
	}

}
package ch3;

import java.util.Scanner;

public class BodyMassIndex {

	public static void BMI() {
		while (true) {
			Scanner in = new Scanner(System.in);
			double weight = in.nextDouble();
			double height = in.nextDouble();
			double BMI = weight / Math.pow(height, 2);
			if (BMI < 18.5)
				System.out.println("��ü��");
			else if (18.5 <= BMI && BMI < 23)
				System.out.println("����");
			else if (23 <= BMI && BMI < 25)
				System.out.println("�����ܰ�");
			else if (25 <= BMI && BMI < 30)
				System.out.println("1�ܰ� ��");
			else if (30 <= BMI && BMI < 35)
				System.out.println("2�ܰ� ��");
			else if (BMI >= 35)
				System.out.println("3�ܰ� ��");
			else if (in.nextInt() == 0) {
				System.out.println("�����մϴ�.");
				break;
			}
			in.close();
		}
	}

	public static void main(String[] args) {
		System.out.println("������(kg), Ű(m)�� �Է��ϼ���.");
		BMI();
	}
}

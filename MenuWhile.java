package ch2;

import java.util.Scanner;

public class MenuWhile {

	public static void main(String[] args) {
		int ��������, ��������, ��������;
		int �����հ�=0, �����հ�=0, �����հ�=0;
		Scanner sc = new Scanner(System.in);
		����� : 
			while(true) {
				System.out.println("[�޴�] �Է�(1) ����(9) : ");
				int menu = sc.nextInt();
				switch(menu) {
				case 1:
					System.out.println("1.��������");
					�������� = sc.nextInt();
					�����հ� += ��������;
					System.out.println("2.��������");
					�������� = sc.nextInt();
					�����հ� += ��������;
					System.out.println("3.��������");
					�������� = sc.nextInt();
					�����հ� += ��������;
					break;
				case 9:
					System.out.println("�����հ� : "+�����հ�+'\n'+"�����հ� : "+�����հ�+'\n'+"�����հ� : "+�����հ�);
					continue �����;
				default:
					System.out.println("����1 �Ǵ� 9�� �Է��ϼ���");
				}
			}
	}
}

package ch2;

import java.util.Scanner;

public class Box {

	public static void main(String[] args) {
		System.out.println("Ű����� ���ο� ���θ� �Է¹޾� �簢���� ���̿� �ѷ��� ����Ͽ� ����ϼ���");

		Scanner scanner = new Scanner(System.in);
		double width = scanner.nextDouble();
		System.out.println("���� : "+width);
		double length = scanner.nextDouble();
		System.out.println("���� : "+length);
		double area = width * length;
		System.out.println("���� : "+area);
		double round = (width+length)*2;
		System.out.println("�ѷ� : "+round);
		
		scanner.close();
	}

}

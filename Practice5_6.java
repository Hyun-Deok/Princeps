package ch5;

import java.util.Scanner;

abstract class Object {
	abstract public void draw();
}

class Line extends Object {
	public void draw() {
		System.out.println("Line");
	}
}

class Rect extends Object {
	public void draw() {
		System.out.println("Rect");
	}
}

class Circle1 extends Object {
	public void draw() {
		System.out.println("Circle");
	}
}

public class Practice5_6 {
	public void Practice5_6() {
		final int MAX = 100;
		Object store[] = new Object[MAX];

		int last = 0; // ������ ����
		int loop = 1; // �޴��� ��ȯ��Ű�� ����
		int number, number2; // �Է¹��� ���� �����ϴ� ����

		while (loop != 4) {
			System.out.print("����(1), ����(2), ��� ����(3), ����(4)>>");
			Scanner input = new Scanner(System.in);
			loop = input.nextInt();

			switch (loop) {
			case 1: // ����
				System.out.print("���� ���� Line(1), Rect(2), Circle(3)>>");
				Scanner first = new Scanner(System.in);
				number = first.nextInt();

				if (number == 1) {
					store[last] = new Line();
					last++;
				} else if (number == 2) {
					store[last] = new Rect();
					last++;
				} else if (number == 3) {
					store[last] = new Circle1();
					last++;
				} else {
					System.out.print("1~3�߿��� �����Ͻÿ�.");
				}
				break;

			case 2: // ����
				if (last != 0) {
					System.out.println("������ ������ ��ġ>>");
					Scanner second = new Scanner(System.in);
					number2 = second.nextInt();
					if (number2 <= last) {
						for (int i = number2 - 1; i < last; i++) {
							store[i] = store[i + 1];
						}
						last--;
					} else {
						System.out.print("������ ������ ��ġ�� �߸� �����ϼ̽��ϴ�.");
					}
				} else {
					System.out.println("������ ������ �����ϴ�.");
				}
				break;

			case 3: // ��� ����
				if (last != 0) {
					for (int i = 0; i < last; i++) {
						store[i].draw();
					}
				} else {
					System.out.println("����� ������ �����ϴ�.");
				}
				break;

			case 4: // ����
				System.out.println("���α׷��� �����մϴ�.");
				break;

			default:
				System.out.println("1~4�߿��� �����Ͻÿ�.");
				continue; // while�� ó������
			}
		}
	}

	public static void main(String[] args) {
		Practice5_6 edit = new Practice5_6();
		edit.Practice5_6();
	}
}

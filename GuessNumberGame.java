package ch3;

import java.util.InputMismatchException;
import java.util.Random;
import java.util.Scanner;

public class GuessNumberGame {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		while (true) {
			System.out.println("���� �����Ͽ����ϴ�. ���߾� ������.");
			Random r = new Random();
			int a = r.nextInt(100);
			int min = 0, max = 99;
			for (int i = 0;; i++) {
				System.out.println(a);
				System.out.println(min + "-" + max);
				System.out.print(i + ">>");
				try {
					int n = in.nextInt();
					if (a > n) {
						System.out.println("�� ����");
						min = n;
					} else if (a < n) {
						System.out.println("�� ����");
						max = n;
					} else if (a == n) {
						System.out.println("�¾ҽ��ϴ�.");
						System.out.print("�ٽ��ϰڽ��ϱ�(y/n)>>");
						String y = in.next();
						if (y.equals("y")) {
							break;
						} else {
							System.out.println("���α׷� ����");
							in.close();
							System.exit(0);
						}
					}
				} catch (InputMismatchException e) {
					System.out.println("������ �ƴմϴ�. �ٽ� �Է��ϼ���.");
					in.next();
					i--;
					continue;
				}
			}

		}
	}
}

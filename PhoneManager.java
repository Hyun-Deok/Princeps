package ch4;

import java.util.Scanner;

class Phone1 {
	private String name, tel;

	public Phone1(String name, String tel) {
		this.name = name;
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public String getTel() {
		return tel;
	}
}

public class PhoneManager {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.print("�ο���>>");
		int num = in.nextInt();
		Phone1[] phone1 = new Phone1[num];
		for (int i = 0; i < num; i++) {
			System.out.print("�̸��� ��ȭ��ȣ(��ȣ�� ���������� �Է�)>>");
			phone1[i] = new Phone1(in.next(),in.next());
			System.out.println(phone1[i].getName()+phone1[i].getTel());
		}
		System.out.println("����Ǿ����ϴ�...");
		for (int i = 0; i < num; i++) {
			System.out.print("�˻��� �̸�>>");
			String a = in.next();
			if (a.equals(phone1[i].getName())) {
				System.out.println(a + "�� ��ȣ�� " + phone1[i].getTel() + "�Դϴ�.");
				continue;
			} else if (a.equals("exit")) {
				System.out.println("���α׷� ����");
				break;
			} else {
				System.out.println(a + "�� �����ϴ�.");
				continue;
			}
		}
		in.close();
	}
}

package ch3;

import java.util.Scanner;

public class ArrayName {

	public static void main(String[] args) {
		char name [] = {'s','h','i','n','h','a','n','b','i','t'};
		for(int i=0; i<name.length; i++) {
			System.out.print(name[i]);
		}
		System.out.println();
		
		for(char j : name)
			System.out.print(j);
		System.out.println();
		
		String name1 = "���Ѻ�";
		byte age = 29;
		String number = "010-5314-6236";
		boolean marriage = false;
		double weight = 63.3;
		System.out.println("�̸��� "+name1+", ���̴� "+age+"��, ��ȭ��ȣ�� "+number+", ��ȥ������ "+marriage+", �����Դ� "+weight+"kg �Դϴ�.");
		
		System.out.println("�̸�, ����, ��ȭ��ȣ, ��ȥ����, �����Ը� �Է��ϼ���.");
		Scanner in = new Scanner(System.in);
		String a = in.next();
		byte b = in.nextByte();
		String c = in.next();
		boolean d = in.nextBoolean();
		double e = in.nextDouble();
		System.out.println("�̸��� "+a+", ���̴� "+b+"��, ��ȭ��ȣ�� "+c+", ��ȥ������ "+d+", �����Դ� "+e+"kg �Դϴ�.");
		in.close();
	}
}

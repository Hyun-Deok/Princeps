package ch3;

import java.util.Scanner;

public class ArrayInit {

	public static void main(String[] args) {
		int [] num = new int[5];
		int [] num1 = {10,20,30,40,50};
		int [] num2 = new int[] {10,20,30,40,50};
		for(int value : num) {         // �� �ݺ����� �ܼ��� ù��° ���Һ��� ������ ���ұ��� ���ʴ�� ������ ���� ������ ó���ϴ� ��� ����
			System.out.println(value);
		}
		for(int i=0; i<num2.length; i++) {       // length�� ����ϸ� �迭�� ������ ���� �ʾƵ� �ǰ�, �迭�� ������ ��쿡�� �ڵ带 �߸����� ����
			System.out.println(num2[i]);
		}
		Scanner input = new Scanner(System.in);
		int size;
		int max=0;
		size = input.nextInt();
		System.out.println("size : " + size);
		int [] num3 = new int[size];
		for(int i=0; i<num3.length; i++) {
			
		}
	}

}

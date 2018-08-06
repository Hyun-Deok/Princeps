package ch4;

import java.util.Scanner;

class Rect {
	private int width, height;

	public Rect(int width, int height) {
		this.width = width;
		this.height = height;
	}

	public int getArea() {
		return width * height;
	}
}
public class RectArray {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		Rect [] rect = new Rect[4];
		int sum = 0;
		for (int i = 0; i < rect.length; i++) {
			System.out.print(i + 1 + " �ʺ�� ���� >>");
			rect[i] = new Rect(Integer.parseInt(in.next()), Integer.parseInt(in.next()));
			sum += rect[i].getArea();
		}
		System.out.println("�����Ͽ����ϴ�...");
		System.out.println("�簢���� ��ü ���� " + sum);
		in.close();
	}
}

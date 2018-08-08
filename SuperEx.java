package ch5;

class Point1 {
	private int x, y; // �� ���� �����ϴ� x,y ��ǥ

	Point1() {
		this.x = this.y = 0;
	}

	Point1(int x, int y) {
		this.x = x;
		this.y = y;
	}

	void showPoint() { // ���� ��ǥ ���
		System.out.println("(" + x + "," + y + ")");
	}
}

class ColorPoint1 extends Point1 { // Point1�� ��ӹ��� ColorPoint1�� ����
	private String color; // ���� ��

	ColorPoint1(int x, int y, String color) {
		super(x, y); // Point1�� ������ Point1(x,y)�� ȣ��
		this.color = color;
	}

	void showColorPoint() { // �÷� ���� ��ǥ ���
		System.out.print(color);
		showPoint(); // Point1 Ŭ������ showPoint()�� ȣ��
	}
}

public class SuperEx {

	public static void main(String[] args) {
		ColorPoint1 cp = new ColorPoint1(5, 6, "blue");
		cp.showColorPoint();
	}
}

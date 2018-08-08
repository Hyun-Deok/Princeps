package ch5;

class Point {
	private int x, y;		// �� ���� �����ϴ� x, y ��ǥ

	void set(int x, int y) {
		this.x = x;
		this.y = y;
	}

	void showPoint() {		// ���� ��ǥ ���
		System.out.println("(" + x + "," + y + ")");
	}
}

class ColorPoint extends Point {		// Point�� ��ӹ��� ColorPoint�� ����
	private String color;		// ���� ��

	void setColor(String color) {
		this.color = color;
	}

	void showColorPoint() {		// �÷� ���� ��ǥ ���
		System.out.print(color);
		showPoint();			// PointŬ������ showPoint()�� ȣ��
	}
}

public class ColorPointEx {

	public static void main(String[] args) {
		Point p = new Point();		// Point��ü ����
		p.set(1, 2);				// PointŬ������ set()�� ȣ��
		p.showPoint();

		ColorPoint cp = new ColorPoint();		// ColorPoint ��ü ����
		cp.set(3, 4);				// PointŬ������ set()�� ȣ��
		cp.setColor("red");			// ColorPointŬ������ setColor()�� ȣ��
		cp.showColorPoint();		// �÷��� ��ǥ ���
	}
}

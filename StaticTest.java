package ch4;

class Circle3 {
	private int radius;

	public Circle3(int radius) {
		this.radius = radius;
	}

	public int getRadius() {
		return this.radius;
	}

	public void setRadius(int radius) {
		this.radius = radius;
	}
}

class CircleManager { // static �޼ҵ常 ����
	static void copy(Circle3 src, Circle3 dest) { // src�� dest�� ����
		dest.setRadius(src.getRadius()); // src�� �������� dest�� ����
	}

	static boolean equals(Circle3 a, Circle3 b) { // a�� b�� �������� ������ ture ����
		if (a.getRadius() == b.getRadius())
			return true;
		else
			return false;
	}
}

public class StaticTest {

	public static void main(String[] args) {
		Circle3 pizza = new Circle3(5); // �������� 5�� ���� ����
		Circle3 waffle = new Circle3(1); // �������� 1�� ���� ����

		boolean res = CircleManager.equals(pizza, waffle); // pizza�� waffle ��
		if (res == true)
			System.out.println("pizza�� waffle ũ�� ����");
		else
			System.out.println("pizza�� waffle ũ�� �ٸ�");

		CircleManager.copy(pizza, waffle); // pizza�� waffle�� ����
		res = CircleManager.equals(pizza, waffle); // pizza�� waffle�� ��
		if (res == true)
			System.out.println("pizza�� waffle ũ�� ����");
		else
			System.out.println("pizza�� waffle ũ�� �ٸ�");
	}
}

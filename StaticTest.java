package ch5;

class Static {
	public static int b = 0; // ���� 1ȸ �޸� �Ҵ��� �ް� ��� ��ü���� �����Ѵ�.
	private int a = 0; // �ν��Ͻ� ����
}
public class StaticTest{
	public static void main(String [] args) {
		System.out.println("Static.b : " + Static.b);
		Static st = new Static();
		System.out.println("st.b : " + st.b);
	}
}

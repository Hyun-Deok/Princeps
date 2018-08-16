package ch5;
class SuperC{
	int i, j;
	public SuperC(){}
	public SuperC(int i, int j) {
		this.i = i;
		this.j = j;
	}
	void show() {
		System.out.println("����Ŭ������ �޼ҵ� show() ����");
	}
}
class SubC extends SuperC{
	int k;
	public SubC(int i, int j, int k) {
		super(i, j); // ����Ŭ������ ������ ȣ��
		this.k = k;
	}
	void show() {
		System.out.println("����Ŭ������ �޼ҵ� show() ����");
		System.out.println("����Ŭ������ show() �޼ҵ� ȣ��");
		super.show();
	}
}
public class SuperConstructorUse {
	public static void main(String[] args) {
		SubC sc = new SubC(10,20,30);
		System.out.println("i, j, k �� : " + sc.i + ", " + sc.j + ", " + sc.k);
		sc.show();
	}
}

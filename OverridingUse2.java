package ch5;
class Overriding2{
	void show() {
		System.out.println("�θ� Ŭ������ �޼ҵ� show()");
	}
	void parent() {
		System.out.println("�θ� Ŭ�������� �ִ� �޼ҵ� parent()");
	}
}
class SubOverriding2 extends Overriding2{
	// overriding
	void show() {
		System.out.println("�ڽ� Ŭ������ �޼ҵ� show()");
	}
}
public class OverridingUse2 {

	public static void main(String[] args) {
		// �θ� Ŭ���� ��ü ����
		Overriding2 ov2 = new Overriding2();
		ov2.show();
		ov2.parent();
		// �ڽ� Ŭ���� ��ü ����
		SubOverriding2 sub2 = new SubOverriding2();
		sub2.show();
		sub2.parent();
	}
}

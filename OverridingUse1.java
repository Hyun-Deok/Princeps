package ch5;
class Overriding{
	void show(String str) {
		System.out.println("���� Ŭ������ �޼ҵ� show(String str) ����" + str);
	}
}
class SubOverriding extends Overriding{
	void show() {
		System.out.println("���� Ŭ������ �޼ҵ� show() ����");
	}
}
public class OverridingUse1 {

	public static void main(String[] args) {
		SubOverriding subO = new SubOverriding();
		subO.show("IT KOREA"); // ��ӹ��� show(String str)
		subO.show();
	}
}

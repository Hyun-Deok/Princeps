package ch5;
class This{
	String area = "";
	public void prn() {
		System.out.println("�� �޼ҵ带 ȣ���� ��ü�� hashCode : " + this);
		System.out.println(this.area);
	}
}
public class ThisUse {

	public static void main(String[] args) {
		This obj1 = new This();
		obj1.area = "�뱸������";
		obj1.prn();
		System.out.println("obj1.hashCode() : " + obj1.hashCode());
	}
}

package ch5;
abstract class C1 {
	abstract void f();
}
public class D extends C1 {
	void f() {System.out.println("��ü ����");}
	public static void main(String[] args) {
		D d = new D();
		d.f();
	}
}

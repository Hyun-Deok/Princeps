package ch5;
class Car{
	public void gear() {
		System.out.println("���� �� ����մϴ�.");
	}
}
class ChildCar extends Car{
	public void autoGear() {
		System.out.println("�ڵ� �� ����մϴ�.");
	}
}
class ChildCar2 extends ChildCar{
	public void autoGear2() {
		System.out.println("�ڵ�/���� �� ȥ���Ͽ� ����մϴ�.");
	}
}
public class CarUse {

	public static void main(String[] args) {
		ChildCar2 cc2 = new ChildCar2();
		cc2.gear();
		cc2.autoGear();
		cc2.autoGear2();
	}
}

package ch5;

/* �θ�Ÿ������ �ڵ�Ÿ�� ��ȯȺ �Ŀ��� �θ� Ŭ������ ����� �ʵ�� �޼ҵ常 ����� �����ϴ�.
����) �޼ҵ尡 �ڽ�Ŭ�������� �������̵��Ǹ� �ڽ�Ŭ������ �޼ҵ尡 ��� ȣ��ȴ�. */
public class ComputerExample {

	public static void main(String[] args) {
		int r = 10;
		Calculator calculator = new Calculator();
		Calculator calculator1 = new Computer();
		System.out.println("������ : " + calculator1.areaCircle(r));
		System.out.println("������ : " + calculator.areaCircle(r));
		System.out.println();
		
		Computer computer = new Computer();
		System.out.println("������ : " + computer.areaCircle(r));
	}

}

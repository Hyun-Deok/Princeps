package ch5;
class Final{
	int money = 10000; // �ν��Ͻ����� ����
	// ���� ������ �� ����.
	final int day = 7; // �������� 7��
	final int week = 4; // �Ѵ��� 4��
	// ��ü�� �������� �ʾƵ� ����� �� �ִ�.
	final static int month = 12; // final static���� ����
	
	// �⺻ ������
	public Final() {
	}
}
public class FinalUse {

	public static void main(String[] args) {
		Final fi = new Final();
		fi.money = 15000;
		// fi.day = 10;  ���� ������ �� ����.
		System.out.println("1���� �뵷 : " + fi.money*fi.day); // 1���� �뵷 : 105000
		System.out.println("1��" + Final.month + "��"); // 1��12��
		// Final.month = 20000;   final static���� ����� month�� ���� ������ �� ����.
	}
}

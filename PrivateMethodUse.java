package ch5;
class PrivateMethod{
	public int kor = 0;
	public int eng = 0;
	public int sum = 0;
	
	private void sum() {
		sum = kor + eng;
		if(sum > 200) {
			System.out.println("������ 200���� �ʰ��߽��ϴ�.");
			sum = 0;
		}
		else {
			System.out.println("�հ� : " + sum + " => �հ谡 ���������� ó���߽��ϴ�.");
		}
	}
	public void call_sum() {
		sum();
	}
}
public class PrivateMethodUse {

	public static void main(String[] args) {
		PrivateMethod pm = new PrivateMethod();
		pm.kor = 90;
		pm.eng = 95;
		pm.call_sum();
	}

}

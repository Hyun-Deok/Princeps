package ch2;

public class VariableExample {

	public static void main(String[] args) {
		// 1) char : ���ڸ� ǥ���ϴ� �ڷ������� 2byte
		char ch = 'A';    // �� ���� ���ڸ� ���԰���
/*		char ch2 = 'AB';   // ������          */		
		// 2) byte, short, int, long
		int num = 100;
/*	    int num1 = 100.123;  // �Ǽ� �ڷḦ ������ ������ ������ �� ����.    */
		long l = 100l;
	    // 3) float, double
	    // �Ҽ��� �ڷ���(�Ǽ���)
	    float f = 10.123f;
	    double d = 10.123;   // double���� �Ҽ����� ǥ���ϸ� �ȴ�.
	    // 4) ����(true / false)�� ǥ���ϴ� boolean
	    boolean b1 = true;
	    boolean b2 = false;
/*	    boolean b3 = 10;    // true//false�̿� �ٸ� ���� ������ �� ����.    */
	    // 5) �ڷ��� ����ȯ
	    char ch2 = 'A'+1;   // 2byte
	    int i2 = ch2;       // 4byte �ڵ��� ��ȯ(�Ͻ���, ������ ����ȯ) => ���� ������ �ִ� �����͸� ū ������ ������ ������ �Ű�����.
	    
	    double d2 = 10.1;   // 8byte
	    int i3 = (int)d2;        // �����(������) ����ȯ => �Ҽ��� ������ �ս��� �߻��Ѵ�.
	    int i4 = (int)10.1;      // ����ȯ�� �Ϸ��� �ϴ� �ڷ����̳� ���ͷ� �տ� ()�Ұ�ȣ �ȿ� �ڷ����� ���ָ� �ȴ�.
	    
	    String str = "hello";    // ���ڿ��� ū ����ǥ�� Ȱ���Ѵ�.
	}

}

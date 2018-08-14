package ch5;
class Garbage{
	int objNo;
	public Garbage(int n) {
		objNo = n;
		System.out.println("Garbage class" + objNo + "�� ����� �����ϴ�.");
	}
	// ��ü�� �޸𸮰� ȸ���� �� �ڵ�ȣ��˴ϴ�.
	protected void finalize() throws Throwable{
		super.finalize();
	}
}
public class GarbageUse {

	public static void main(String[] args) {
		Garbage [] ga = new Garbage[10];
		// ��ü ����
		for(int i=0; i<ga.length; i++) {
			ga[i] = new Garbage(i);
		}
		// ��ü �޸� ����
		for(int i=0; i<ga.length; i++) {
			ga[i] = null;
		}
		// ������ Garbage Collection��� ����
		System.gc();
		for(int i=0; i<ga.length; i++) {
			System.out.println(ga[i].hashCode()); // �޸𸮰� �����Ǿ��� ������ �����߻�
		}
	}
}

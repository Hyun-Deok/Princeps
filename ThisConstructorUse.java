package ch5;
class ThisData{
	int i;
	int j;
	int k;
	// a.������
	public ThisData() {
		this.i = 0;
		this.j = 0;
		this.k = 0;
	}
	// b.������
	public ThisData(int i) {
		this.i = i;
	}
	// c.������
	public ThisData(int i, int j) {
		this(i); // b.�����ڰ� ȣ��Ǿ� �ʱ�ȭ�ȴ�.
		this.j = j;
	}
}
public class ThisConstructorUse {

	public static void main(String[] args) {
		ThisData td = new ThisData(100,90);
		System.out.println("td.i : " + td.i);
		System.out.println("td.j : " + td.j);
		System.out.println("td.k : " + td.k);
	}
}

package ch5;
class Box{
	int cnt = 0;
	static long boxID = 0;
	
	public Box() {
		boxID = boxID + 1; // static variable
		cnt = cnt + 1; // member variable
		System.out.println("������� cnt : " + cnt);
		System.out.println("static ���� boxID : " + boxID);
	}

    // 1. ��� �޼ҵ忡���� static������ ������ �� �����ϴ�.
/*	public void staticTest() {
		static long count = 0;
		count = count + 1;
	}*/
	// 2. static�޼ҵ忡 static������ ������ �� �����ϴ�.
/*	public static void staticTest2() {
		static long count = 0;
		count = count + 1;
	}*/
}
public class StaticUse {
	public static void main(String[] args) {
		// ��ü ����
		Box mybox1 = new Box();
		Box mybox2 = new Box();
		Box mybox3 = new Box();
	}
}

package ch5;

public class AvgTest {
	public int getAvg() {
		System.out.println("���� �ΰ� �̻� �Է��� �ּ���");
		return 0;
	}
	// �޼ҵ� �����ε�
	public int getAvg(float i,float j) {
		return ((int)i+(int)j)/2;
	}
	public int getAvg(int i, int j,int k) {
		return (i+j+k)/3;
	}
	public int getAvg(int i, int j, int k, int l) {
		return (i+j+k+l)/4;
	}
	// return type�� �޼ҵ带 �����ϴ� ������ �ƴϴ�.
/*  public float getAcg(){
		return 0.0f;
    }   */
	public static void main(String[] args) {
		AvgTest st = new AvgTest();
		System.out.println(st.getAvg());
		System.out.println(st.getAvg(10,20));
		System.out.println(st.getAvg(10.5f,20.5f));
		System.out.println(st.getAvg(10,20,30));
		System.out.println(st.getAvg(10,20,30,40));
	}
}

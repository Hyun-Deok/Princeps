package ch5;
class LCD{
	private int size;
	public LCD(int n) { size = n; }
	public int getSize() { return size; }		// ĸ��ȭ(��������)���� getTerm�޼ҵ带 ����Ͽ� ���̰� �ϱ�.
}
public class Exercise5_5 extends LCD{
	int colorSize;
	public Exercise5_5(int colorSize, int size) {
		super(size);
		this.colorSize = colorSize;
	}
}

package ch5;

public class colorLCDExample {

	public static void main(String[] args) {
		Exercise5_5 colorLcd = new Exercise5_5(256,85);
		System.out.println(colorLcd.colorSize + "\t" + colorLcd.getSize());			// colorLcd.size => ĸ��ȭ(��������)���� getTerm�޼ҵ带 ����Ͽ� ���̰� �ϱ�.
	}
}

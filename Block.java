package ch5;

public class Block {
	String block = "����ִ� ��ȭ";

	public static void main(String[] args) {
		String b1 = "Ʈ����";
		System.out.println("Movie : " + b1);
		{
			String b2 = "��������";
			System.out.println("Movie : " + b2);
			int i = 0;

			for (int j = 0; j < 5; j++) {
				// j�� ���ȿ����� �����ȴ�.
			}
			// System.out.println("j : " + j);
			for (i = 0; i < 5; i++) {
				// i�� �ܺο� ����Ǿ� �ִ�.
			}
			System.out.println("i : " + i); // i:5
		}
		System.out.println("Movie : " + b1);
		// System.out.println("Movie : " + b2);
	}
}

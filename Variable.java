package ch5;

public class Variable {
	// �������, �ν��Ͻ�����, �ʵ�, Heap
	String movie = "Ʈ����";

	public void show() {
		System.out.println("show �޼ҵ� ���� : " + movie); // Ʈ����
	}

	public void title() {
		String movie = "�Ƹ��ٵ�";
		System.out.println("title �޼ҵ� ���� : " + movie); // �Ƹ��ٵ�
		System.out.println("title this.movie" + this.movie); // Ʈ����
	}

	public static void main(String[] args) {
		Variable v = new Variable();
		v.show();
		v.title();
		v.show();
	}

}

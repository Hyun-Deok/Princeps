package ch5;

public class StringTest {
	public void changeString(String src) {
		src = "JSP";
	}
	public static void main(String[] args) {
		System.out.println("JSP".hashCode());
		System.out.println("jsp".hashCode());
		String step = "JAVA";
		StringTest st = new StringTest();
		System.out.println(step);
		st.changeString(step);
		System.out.println(step);
		System.out.println(step.equals("JAVA")); // equals()�� �� ��ü�� ������ �������� ���ϴ� ������
	}
}

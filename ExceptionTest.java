package ch3;

public class ExceptionTest {

	public static void main(String[] args) {
		String language[] = {"java", "jsp", "EJB"};
		int i = 0;
		while(i<language.length) {   // �迭�� ���� ������ŭ �ݺ��Ѵ�.
			try {
			System.out.println(language[i]);
			}catch(ArrayIndexOutOfBoundsException e) {
				System.out.println("�迭�� �ε����� �ٽ� �����մϴ�.");
			}finally {
				System.out.println("������ ��µǴ� �κ��Դϴ�.");
			}
			i++;
		}
	}
}

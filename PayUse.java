package ch5;

public class PayUse {

	public static void main(String[] args) {
		Pay p = new Pay();
		p.ppp = 10;
		int i = 10;
		p.payRefer(p);
		p.payValue(i);
		System.out.println(p.ppp); // ��ü�� ����Ǿ 2010
		System.out.println(i); // 10
	}
}
/*       Call by Value        Call by Reference
�Ű�����         ���޹�� �� ����                    ���۷����� �Ѱ���
����              ���� ���� ��ȣ                      ������ ������ ���� ��� �޸� ����
����              ������� ���� �޸� ����       ������ ������ �� ����
�Ű�����Ÿ��    ����(�⺻)������ Ÿ��          ���۷���(����)Ÿ��(�迭����)     */

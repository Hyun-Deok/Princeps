package ch5;
class Data{
	private String name = null;
	private String season = null;
	private int age = 0;
	// setter�޼ҵ�� set���� �����ϴ� �޼ҵ�, getter�޼ҵ�� get���� �����ϴ� �޼ҵ�.
	// set+�������� ù ���ڸ� �빮�ڷ� ����Ͽ� setName()���� �����ϴ� �����̹Ƿ� ���� Ÿ���� void.
	public void setName(String name) {
		this.name = name;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public void setAge(int age) {
		if(age>=20 && age<=30) {
			this.age = age;
		}else {
			System.out.println("�Էµ� �� �ִ� ���̴� 10~30�� �����Դϴ�.");
		}
	}
	// getter �޼ҵ�
	public String getName() {
		return name;
	}
	public String getSeason() {
		return season;
	}
	public int getAge() {
		return age;
	}
}
public class DataUse {

	public static void main(String[] args) {
		Data data = new Data();
		data.setName("�մ���");
		data.setSeason("����");
		data.setAge(35);
		
		System.out.println(data.getName());
		System.out.println(data.getSeason());
		System.out.println(data.getAge());
	}
}

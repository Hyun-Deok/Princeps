package ch4;

public class BookEx {
	String name;
	String author;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public static void main(String[] args) {
		BookEx bookEx = new BookEx();
		bookEx.setAuthor("Ȳ����");
		bookEx.setName("�ڹ�");
		System.out.println(bookEx.getName() + "å�� ���ڴ� " + bookEx.getAuthor() + "�Դϴ�.");
	}
}

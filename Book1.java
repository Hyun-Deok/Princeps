package ch4;

public class Book1 {
		String title;
		String author;
		
		void show() {System.out.println(title + " " + author);}
		
		public Book1() {
			this("","");
			System.out.println("1������ ȣ��");
		}

		public Book1(String title) {
			this(title, "���ڹ̻�");
			System.out.println("2������ ȣ��");
		}
		
		public Book1(String title, String author) {
			this.title = title;
			this.author = author;
			System.out.println("3������ ȣ��");
		}
		
		public static void main(String [] args) {
			Book1 javaBook = new Book1("Java", "Ȳ����");
			Book1 bible = new Book1("Bible");
			Book1 emptyBook = new Book1();
			
//			javaBook.show();
//			bible.show();
			emptyBook.show();
	}

}

/* 	*/ 			//Commentaire multiligne
System.out.println("");

//Meme chose que for each-------------
for (int number: myArray){
   System.out.println(number);
}
//-------------


enum Direction{
	north, east, west, south;
}


//CLASS et INSTANCE
class Book {
      String title;
      String author;
      int numberOfPages;
      String publisher;
      //Constructeur de la classe Book
      Book(String title, String author, int numberOfPages, String publisher) {
            //Initialise l’attribut title avec la valeur de l’argument title
            this.title = title;
            this.author = author;
            this.numberOfPages = numberOfPages;
            this.publisher = publisher;
      }
}
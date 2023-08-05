class Person {
  String fullName;
  bool status;
  String gender;
  String statusText;

  Person(this.fullName, this.status, this.gender, this.statusText);

 static List<Person> peopleData = [
   Person("John Doe", true, "male", "Hello, I'm online!"),
   Person("Jane Smith", false, "female", 'Offline'),
   Person("Michael Johnson", true, "male", "Available"),
   Person("Emily Williams", true, "female", "Busy right now"),
   Person("Robert Brown", false, "male", 'Offline'),
   Person("Jessica Lee", true, "female", "Feeling great!"),
   Person("David Wilson", false, "male", 'Offline'),
   Person("Sarah Anderson", true, "female", "I'm here!"),
   Person("Christopher Martinez", true, "male", "Ready to chat"),
   Person("Amanda Taylor", false, "female", 'Offline'),
   Person("Matthew Hernandez", true, "male", "On a call"),
   Person("Olivia Lopez", false, "female", 'Offline'),
   Person("Daniel Gonzalez", true, "male", "Let's talk!"),
   Person("Sophia Moore", true, "female", "Available"),
   Person("Andrew Jackson", false, "male", 'Offline'),
   Person("Isabella White", true, "female", "Busy right now"),
   Person("William Lee", false, "male", 'Offline'),
   Person("Mia Adams", true, "female", "At the gym"),
   Person("Ethan Scott", false, "male", 'Offline'),
   Person("Victoria Hall", true, "female", "Enjoying the day"),
  ];

}



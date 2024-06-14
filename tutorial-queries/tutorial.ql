// This is a CodeQL query file.

// Import the tutorial library.
// See https://codeql.github.com/docs/writing-codeql-queries/ql-tutorials/#ql-tutorials.
import tutorial

// from Person p
// select p

//from string s 
//where s = "naveen"
//select s.length()

// select "lgtm".length() 


//from float x, float y
//where x =2.pow(5) and y = 245.6 
//select x.minimum(y).sin()


//from int x, int y, int z
//where x in [1..10] and y in [1..10] and z in [1..10] and
//      x*x + y*y = z*z
//select x, y, z

//class SmallInt extends int {
//  SmallInt() { this in [1..10] }
//    int square() { result = this*this }
//  }
  
  // from SmallInt x, SmallInt y, SmallInt z
  // where x.square() + y.square() = z.square()
  // select x, y, z



//  from boolean b
//  where b = false
//  select b.booleanNot()
  
// from date start, date end
// where start = "10/06/2017".toDate() and end = "28/09/2017".toDate()
// select start.daysTo(end)



from Person t
where
  /* 1 */ t.getHeight() > 150 and
  /* 2 */ not t.getHairColor() = "blond" and
  /* 3 */ exists (string c | t.getHairColor() = c) and
  /* 4 */ not t.getAge() < 30 and
  /* 5 */ t.getLocation() = "east" and
  /* 6 */ (t.getHairColor() = "black" or t.getHairColor() = "brown") and
  /* 7 */ not (t.getHeight() > 180 and t.getHeight() < 190) and
  /* 8 */ exists(Person p | p.getAge() > t.getAge())
select t
import tutorial

Person relativeOf(Person p) { parentOf*(result) = parentOf*(p) }

//from Person p
//where
//  not p.isDeceased() and
//  p = relativeOf("King Basil")
//select p

predicate hasCriminalRecord(Person p) {
    p = "Hester" or
    p = "Hugh" or
    p = "Charlie"
  }
  
  from Person p
  where
    not p.isDeceased() and
    p = relativeOf("King Basil") and
    not hasCriminalRecord(p)
  select p
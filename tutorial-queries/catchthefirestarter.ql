import tutorial

predicate isSouthern(Person p) { p.getLocation() = "south" }

class Southerner extends Person {
  /* the characteristic predicate */
  Southerner() { isSouthern(this) }
}

class Child extends Person {
  /* the characteristic predicate */
  Child() { this.getAge() < 10 }

  /* a member predicate */
  override predicate isAllowedIn(string region) { region = this.getLocation() }
}

// from Southerner s
// where s.isAllowedIn("north")
// select s, s.getAge()

predicate isBald(Person p) { not exists(string c | p.getHairColor() = c) }

from Southerner s
where s.isAllowedIn("north") and isBald(s)
select s
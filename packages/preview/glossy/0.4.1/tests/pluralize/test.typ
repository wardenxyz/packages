#import "/src/utils.typ": __pluralize

#let plural_tests = (
  ("BUS", "BUSes"),
  ("Box", "Boxes"),
  ("Buzz", "Buzzes"),
  ("CHURCH", "CHURCHes"),
  ("Lady", "Ladies"),
  ("Leaf", "Leaves"),
  ("Loaf", "Loaves"),
  ("ability", "abilities"),
  ("account", "accounts"),
  ("advice", "advice"),
  ("age", "ages"),
  ("agent", "agents"),
  ("alumna", "alumnae"),
  ("alumni", "alumni"),
  ("alumnus", "alumni"),
  ("answer", "answers"),
  ("appendix", "appendices"),
  ("apple", "apples"),
  ("art", "arts"),
  ("artist", "artists"),
  ("attention", "attentions"),
  ("ax", "axes"),
  ("baby", "babies"),
  ("ball", "balls"),
  ("bank", "banks"),
  ("basis", "bases"),
  ("beauty", "beauties"),
  ("bed", "beds"),
  ("belief", "beliefs"),
  ("berry", "berries"),
  ("bird", "birds"),
  ("book", "books"),
  ("bottle", "bottles"),
  ("box", "boxes"),
  ("boy", "boys"),
  ("branch", "branches"),
  ("brother", "brothers"),
  ("brush", "brushes"),
  ("bus", "buses"),
  ("business", "businesses"),
  ("cactus", "cacti"),
  ("cake", "cakes"),
  ("calf", "calves"),
  ("car", "cars"),
  ("care", "cares"),
  ("carrot", "carrots"),
  ("cart", "carts"),
  ("cat", "cats"),
  ("chair", "chairs"),
  ("chance", "chances"),
  ("change", "changes"),
  ("chef", "chefs"),
  ("chief", "chiefs"),
  ("child", "children"),
  ("church", "churches"),
  ("city", "cities"),
  ("class", "classes"),
  ("cloud", "clouds"),
  ("coach", "coaches"),
  ("comfort", "comforts"),
  ("company", "companies"),
  ("computer", "computers"),
  ("confidence", "confidences"),
  ("cookie", "cookies"),
  ("corpus", "corpuses"),
  ("country", "countries"),
  ("courage", "courages"),
  ("cow", "cows"),
  ("criterion", "criteria"),
  ("culture", "cultures"),
  ("cup", "cups"),
  ("danger", "dangers"),
  ("dart", "darts"),
  ("day", "days"),
  ("deer", "deer"),
  ("desk", "desks"),
  ("development", "developments"),
  ("dish", "dishes"),
  ("dog", "dogs"),
  ("door", "doors"),
  ("dream", "dreams"),
  ("education", "educations"),
  ("egg", "eggs"),
  ("elephant", "elephants"),
  ("employee", "employees"),
  ("energy", "energies"),
  ("entertainment", "entertainments"),
  ("exam", "exams"),
  ("experience", "experiences"),
  ("family", "families"),
  ("farm", "farms"),
  ("father", "fathers"),
  ("fish", "fish"),
  ("floor", "floors"),
  ("flower", "flowers"),
  ("fly", "flies"),
  ("focus", "focuses"),
  ("foot", "feet"),
  ("fork", "forks"),
  ("fox", "foxes"),
  ("freedom", "freedoms"),
  ("friend", "friends"),
  ("future", "futures"),
  ("game", "games"),
  ("garden", "gardens"),
  ("gas", "gases"),
  ("gift", "gifts"),
  ("girl", "girls"),
  ("glass", "glasses"),
  ("goat", "goats"),
  ("goose", "geese"),
  ("grass", "grasses"),
  ("guy", "guys"),
  ("half", "halves"),
  ("hand", "hands"),
  ("hat", "hats"),
  ("head", "heads"),
  ("health", "healths"),
  ("help", "helps"),
  ("hero", "heroes"),
  ("history", "histories"),
  ("holiday", "holidays"),
  ("hope", "hopes"),
  ("horse", "horses"),
  ("house", "houses"),
  ("idea", "ideas"),
  ("image", "images"),
  ("information", "information"),
  ("interest", "interests"),
  ("island", "islands"),
  ("journey", "journeys"),
  ("joy", "joys"),
  ("justice", "justices"),
  ("key", "keys"),
  ("keyboard", "keyboards"),
  ("king", "kings"),
  ("kiss", "kisses"),
  ("kitchen", "kitchens"),
  ("knife", "knives"),
  ("knowledge", "knowledges"),
  ("lady", "ladies"),
  ("lamp", "lamps"),
  ("laptop", "laptops"),
  ("law", "laws"),
  ("leaf", "leaves"),
  ("learning", "learnings"),
  ("leg", "legs"),
  ("letter", "letters"),
  ("life", "lives"),
  ("light", "lights"),
  ("line", "lines"),
  ("lion", "lions"),
  ("loaf", "loaves"),
  ("love", "loves"),
  ("luck", "lucks"),
  ("man", "men"),
  ("map", "maps"),
  ("market", "markets"),
  ("match", "matches"),
  ("memory", "memories"),
  ("milk", "milks"),
  ("money", "money"),
  ("monitor", "monitors"),
  ("month", "months"),
  ("mosquito", "mosquitoes"),
  ("mother", "mothers"),
  ("mountain", "mountains"),
  ("mouse", "mice"),
  ("movie", "movies"),
  ("name", "names"),
  ("nation", "nations"),
  ("neck", "necks"),
  ("night", "nights"),
  ("nucleus", "nuclei"),
  ("ocean", "oceans"),
  ("octopi", "octopi"),
  ("octopodes", "octopodes"),
  ("octopus", "octopuses"),
  ("office", "offices"),
  ("onion", "onions"),
  ("opinion", "opinions"),
  ("orange", "oranges"),
  ("page", "pages"),
  ("park", "parks"),
  ("party", "parties"),
  ("peace", "peaces"),
  ("peach", "peaches"),
  ("pen", "pens"),
  ("person", "people"),
  ("phenomenon", "phenomena"),
  ("phone", "phones"),
  ("photo", "photos"),
  ("piano", "pianos"),
  ("picture", "pictures"),
  ("pig", "pigs"),
  ("place", "places"),
  ("plane", "planes"),
  ("plant", "plants"),
  ("plate", "plates"),
  ("play", "plays"),
  ("player", "players"),
  ("pocket", "pockets"),
  ("potato", "potatoes"),
  ("power", "powers"),
  ("printer", "printers"),
  ("problem", "problems"),
  ("program", "programs"),
  ("proof", "proofs"),
  ("puppy", "puppies"),
  ("queen", "queens"),
  ("quiz", "quizzes"),
  ("radio", "radios"),
  ("rain", "rains"),
  ("respect", "respects"),
  ("responsibility", "responsibilities"),
  ("river", "rivers"),
  ("road", "roads"),
  ("roof", "roofs"),
  ("room", "rooms"),
  ("safe", "safes"),
  ("school", "schools"),
  ("scissors", "scissors"),
  ("sea", "seas"),
  ("series", "series"),
  ("sheep", "sheep"),
  ("ship", "ships"),
  ("shoe", "shoes"),
  ("shop", "shops"),
  ("shore", "shores"),
  ("sister", "sisters"),
  ("sky", "skies"),
  ("snow", "snows"),
  ("solo", "solos"),
  ("son", "sons"),
  ("song", "songs"),
  ("sound", "sounds"),
  ("spoon", "spoons"),
  ("star", "stars"),
  ("station", "stations"),
  ("stone", "stones"),
  ("store", "stores"),
  ("story", "stories"),
  ("street", "streets"),
  ("student", "students"),
  ("studio", "studios"),
  ("success", "successes"),
  ("sun", "suns"),
  ("syllabus", "syllabuses"),
  ("table", "tables"),
  ("taco", "tacos"),
  ("teacher", "teachers"),
  ("team", "teams"),
  ("television", "televisions"),
  ("test", "tests"),
  ("thief", "thieves"),
  ("thing", "things"),
  ("time", "times"),
  ("tomato", "tomatoes"),
  ("tooth", "teeth"),
  ("town", "towns"),
  ("toy", "toys"),
  ("tree", "trees"),
  ("trousers", "trousers"),
  ("truth", "truths"),
  ("umbrella", "umbrellas"),
  ("valley", "valleys"),
  ("victory", "victories"),
  ("video", "videos"),
  ("village", "villages"),
  ("wall", "walls"),
  ("watch", "watches"),
  ("water", "waters"),
  ("wealth", "wealths"),
  ("week", "weeks"),
  ("wife", "wives"),
  ("window", "windows"),
  ("wisdom", "wisdoms"),
  ("wish", "wishes"),
  ("wolf", "wolves"),
  ("woman", "women"),
  ("wood", "woods"),
  ("word", "words"),
  ("work", "works"),
  ("year", "years"),
  ("zero", "zeros"),
  (none, none),
)

#for (singular, expected) in plural_tests {
  let result = __pluralize(singular)
  if result != expected {
    panic(
      "Pluralization failed for: "
      + (if singular == none { "none" } else { str(singular) })
      + ". Expected: "
      + (if expected == none { "none" } else { str(expected) })
      + ", got: "
      + (if result == none { "none" } else { str(result) })
    )
  }
}

#set page(height: auto, width: auto, margin: 1em)

"Success! All pluralizations determined properly!"

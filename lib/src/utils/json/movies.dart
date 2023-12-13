class AppMovies {
  static final genres = [
    "Comedy",
    "Fantasy",
    "Crime",
    "Drama",
    "Music",
    "Adventure",
    "History",
    "Thriller",
    "Animation",
    "Family",
    "Mystery",
    "Biography",
    "Action",
    "Film-Noir",
    "Romance",
    "Sci-Fi",
    "War",
    "Western",
    "Horror",
    "Musical",
    "Sport"
  ];
  static List<Map<String, dynamic>> movies = [
    {
      "id": 3,
      "title": "The Shawshank Redemption",
      "year": "1994",
      "runtime": "142",
      "genres": ["Crime", "Drama"],
      "director": "Frank Darabont",
      "actors": "Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler",
      "plot":
          "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5ODAyNzA4OV5BMl5BanBnXkFtZTcwNzYwNTIzNA@@._V1_SX300.jpg"
    },
    {
      "id": 4,
      "title": "Crocodile Dundee",
      "year": "1986",
      "runtime": "97",
      "genres": ["Adventure", "Comedy"],
      "director": "Peter Faiman",
      "actors": "Paul Hogan, Linda Kozlowski, John Meillon, David Gulpilil",
      "plot":
          "An American reporter goes to the Australian outback to meet an eccentric crocodile poacher and invites him to New York City.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTg0MTU1MTg4NF5BMl5BanBnXkFtZTgwMDgzNzYxMTE@._V1_SX300.jpg"
    },
    {
      "id": 5,
      "title": "Valkyrie",
      "year": "2008",
      "runtime": "121",
      "genres": ["Drama", "History", "Thriller"],
      "director": "Bryan Singer",
      "actors": "Tom Cruise, Kenneth Branagh, Bill Nighy, Tom Wilkinson",
      "plot":
          "A dramatization of the 20 July assassination and political coup plot by desperate renegade German Army officers against Hitler during World War II.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5ODAyNzA4OV5BMl5BanBnXkFtZTcwNzYwNTIzNA@@._V1_SX300.jpg"
    },
    {
      "id": 6,
      "title": "Ratatouille",
      "year": "2007",
      "runtime": "111",
      "genres": ["Animation", "Comedy", "Family"],
      "director": "Brad Bird, Jan Pinkava",
      "actors": "Patton Oswalt, Ian Holm, Lou Romano, Brian Dennehy",
      "plot":
          "A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_SX300.jpg"
    },
    {
      "id": 7,
      "title": "City of God",
      "year": "2002",
      "runtime": "130",
      "genres": ["Crime", "Drama"],
      "director": "Fernando Meirelles, Kátia Lund",
      "actors":
          "Alexandre Rodrigues, Leandro Firmino, Phellipe Haagensen, Douglas Silva",
      "plot":
          "Two boys growing up in a violent neighborhood of Rio de Janeiro take different paths: one becomes a photographer, the other a drug dealer.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4ODQ3ODkzNV5BMl5BanBnXkFtZTYwOTc4NDI3._V1_SX300.jpg"
    },
    {
      "id": 8,
      "title": "Memento",
      "year": "2000",
      "runtime": "113",
      "genres": ["Mystery", "Thriller"],
      "director": "Christopher Nolan",
      "actors":
          "Guy Pearce, Carrie-Anne Moss, Joe Pantoliano, Mark Boone Junior",
      "plot":
          "A man juggles searching for his wife's murderer and keeping his short-term memory loss from being an obstacle.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4ODQ3ODkzNV5BMl5BanBnXkFtZTYwOTc4NDI3._V1_SX300.jpg"
    },
    {
      "id": 9,
      "title": "The Intouchables",
      "year": "2011",
      "runtime": "112",
      "genres": ["Biography", "Comedy", "Drama"],
      "director": "Olivier Nakache, Eric Toledano",
      "actors": "François Cluzet, Omar Sy, Anne Le Ny, Audrey Fleurot",
      "plot":
          "After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4ODQ3ODkzNV5BMl5BanBnXkFtZTYwOTc4NDI3._V1_SX300.jpg"
    },
    {
      "id": 10,
      "title": "Stardust",
      "year": "2007",
      "runtime": "127",
      "genres": ["Adventure", "Family", "Fantasy"],
      "director": "Matthew Vaughn",
      "actors": "Ian McKellen, Bimbo Hart, Alastair MacIntosh, David Kelly",
      "plot":
          "In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he'll retrieve a fallen star by venturing into the magical realm.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjkyMTE1OTYwNF5BMl5BanBnXkFtZTcwMDIxODYzMw@@._V1_SX300.jpg"
    },
    {
      "id": 11,
      "title": "Apocalypto",
      "year": "2006",
      "runtime": "139",
      "genres": ["Action", "Adventure", "Drama"],
      "director": "Mel Gibson",
      "actors":
          "Rudy Youngblood, Dalia Hernández, Jonathan Brewer, Morris Birdyellowhead",
      "plot":
          "As the Mayan kingdom faces its decline, the rulers insist the key to prosperity is to build more temples and offer human sacrifices. Jaguar Paw, a young man captured for sacrifice, flees to avoid his fate.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BNTM1NjYyNTY5OV5BMl5BanBnXkFtZTcwMjgwNTMzMQ@@._V1_SX300.jpg"
    },
    {
      "id": 12,
      "title": "Taxi Driver",
      "year": "1976",
      "runtime": "113",
      "genres": ["Crime", "Drama"],
      "director": "Martin Scorsese",
      "actors": "Diahnne Abbott, Frank Adu, Victor Argo, Gino Ardito",
      "plot":
          "A mentally unstable Vietnam War veteran works as a night-time taxi driver in New York City where the perceived decadence and sleaze feeds his urge for violent action, attempting to save a preadolescent prostitute in the process.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4ODQ3ODkzNV5BMl5BanBnXkFtZTYwOTc4NDI3._V1_SX300.jpg"
    },
    {
      "id": 13,
      "title": "No Country for Old Men",
      "year": "2007",
      "runtime": "122",
      "genres": ["Crime", "Drama", "Thriller"],
      "director": "Ethan Coen, Joel Coen",
      "actors": "Tommy Lee Jones, Javier Bardem, Josh Brolin, Woody Harrelson",
      "plot":
          "Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg"
    },
    {
      "id": 15,
      "title": "Looper",
      "year": "2012",
      "runtime": "119",
      "genres": ["Action", "Crime", "Drama"],
      "director": "Rian Johnson",
      "actors": "Joseph Gordon-Levitt, Bruce Willis, Emily Blunt, Paul Dano",
      "plot":
          "In 2074, when the mob wants to get rid of someone, the target is sent into the past, where a hired gun awaits - someone like Joe - who one day learns the mob wants to 'close the loop' by sending back Joe's future self for assassination.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg"
    },
    {
      "id": 16,
      "title": "Corpse Bride",
      "year": "2005",
      "runtime": "77",
      "genres": ["Animation", "Drama", "Family"],
      "director": "Tim Burton, Mike Johnson",
      "actors":
          "Johnny Depp, Helena Bonham Carter, Emily Watson, Tracey Ullman",
      "plot":
          "When a shy groom practices his wedding vows in the inadvertent presence of a deceased young woman, she rises from the grave assuming he has married her.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg"
    },
    {
      "id": 17,
      "title": "The Third Man",
      "year": "1949",
      "runtime": "93",
      "genres": ["Film-Noir", "Mystery", "Thriller"],
      "director": "Carol Reed",
      "actors": "Joseph Cotten, Alida Valli, Orson Welles, Trevor Howard",
      "plot":
          "Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg"
    },
    {
      "id": 18,
      "title": "The Beach",
      "year": "2000",
      "runtime": "119",
      "genres": ["Adventure", "Drama", "Romance"],
      "director": "Danny Boyle",
      "actors":
          "Leonardo DiCaprio, Daniel York, Patcharawan Patarakijjanon, Virginie Ledoyen",
      "plot":
          "Twenty-something Richard travels to Thailand and finds himself in possession of a strange map. Rumours state that it leads to a solitary beach paradise, a tropical bliss - excited and intrigued, he sets out to find it.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BN2ViYTFiZmUtOTIxZi00YzIxLWEyMzUtYjQwZGNjMjNhY2IwXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg"
    },
    {
      "id": 19,
      "title": "Scarface",
      "year": "1983",
      "runtime": "170",
      "genres": ["Crime", "Drama"],
      "director": "Brian De Palma",
      "actors":
          "Al Pacino, Steven Bauer, Michelle Pfeiffer, Mary Elizabeth Mastrantonio",
      "plot":
          "In Miami in 1980, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAzOTM4MzEwNl5BMl5BanBnXkFtZTgwMzU1OTc1MDE@._V1_SX300.jpg"
    },
    {
      "id": 20,
      "title": "Sid and Nancy",
      "year": "1986",
      "runtime": "112",
      "genres": ["Biography", "Drama", "Music"],
      "director": "Alex Cox",
      "actors": "Gary Oldman, Chloe Webb, David Hayman, Debby Bishop",
      "plot":
          "Morbid biographical story of Sid Vicious, bassist with British punk group the Sex Pistols, and his girlfriend Nancy Spungen. When the Sex Pistols break up after their fateful US tour, ...",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjExNjA5NzY4M15BMl5BanBnXkFtZTcwNjQ2NzI5NA@@._V1_SX300.jpg"
    },
    {
      "id": 21,
      "title": "Black Swan",
      "year": "2010",
      "runtime": "108",
      "genres": ["Drama", "Thriller"],
      "director": "Darren Aronofsky",
      "actors": "Natalie Portman, Mila Kunis, Vincent Cassel, Barbara Hershey",
      "plot":
          "A committed dancer wins the lead role in a production of Tchaikovsky's \"Swan Lake\" only to find herself struggling to maintain her sanity.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BNzY2NzI4OTE5MF5BMl5BanBnXkFtZTcwMjMyNDY4Mw@@._V1_SX300.jpg"
    },
    {
      "id": 22,
      "title": "Inception",
      "year": "2010",
      "runtime": "148",
      "genres": ["Action", "Adventure", "Sci-Fi"],
      "director": "Christopher Nolan",
      "actors":
          "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page, Tom Hardy",
      "plot":
          "A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg"
    },
    {
      "id": 24,
      "title": "Chasing Amy",
      "year": "1997",
      "runtime": "113",
      "genres": ["Comedy", "Drama", "Romance"],
      "director": "Kevin Smith",
      "actors": "Ethan Suplee, Ben Affleck, Scott Mosier, Jason Lee",
      "plot":
          "Holden and Banky are comic book artists. Everything's going good for them until they meet Alyssa, also a comic book artist. Holden falls for her, but his hopes are crushed when he finds out she's gay.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BZDM3MTg2MGUtZDM0MC00NzMwLWE5NjItOWFjNjA2M2I4YzgxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"
    },
    {
      "id": 26,
      "title": "The Silence of the Lambs",
      "year": "1991",
      "runtime": "118",
      "genres": ["Crime", "Drama", "Thriller"],
      "director": "Jonathan Demme",
      "actors":
          "Jodie Foster, Lawrence A. Bonney, Kasi Lemmons, Lawrence T. Wrentz",
      "plot":
          "A young F.B.I. cadet must confide in an incarcerated and manipulative killer to receive his help on catching another serial killer who skins his victims.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NzkzMDI4OF5BMl5BanBnXkFtZTcwMDA0NzE1NA@@._V1_SX300.jpg"
    },
    {
      "id": 29,
      "title": "Midnight Express",
      "year": "1978",
      "runtime": "121",
      "genres": ["Crime", "Drama", "Thriller"],
      "director": "Alan Parker",
      "actors": "Brad Davis, Irene Miracle, Bo Hopkins, Paolo Bonacelli",
      "plot":
          "Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQyMDA5MzkyOF5BMl5BanBnXkFtZTgwOTYwNTcxMTE@._V1_SX300.jpg"
    },
    {
      "id": 30,
      "title": "Pulp Fiction",
      "year": "1994",
      "runtime": "154",
      "genres": ["Crime", "Drama"],
      "director": "Quentin Tarantino",
      "actors": "Tim Roth, Amanda Plummer, Laura Lovelace, John Travolta",
      "plot":
          "The lives of two mob hit men, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@._V1_SX300.jpg"
    },
    {
      "id": 31,
      "title": "Lock, Stock and Two Smoking Barrels",
      "year": "1998",
      "runtime": "107",
      "genres": ["Comedy", "Crime"],
      "director": "Guy Ritchie",
      "actors": "Jason Flemyng, Dexter Fletcher, Nick Moran, Jason Statham",
      "plot":
          "A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg"
    },
    {
      "id": 33,
      "title": "Rear Window",
      "year": "1954",
      "runtime": "112",
      "genres": ["Mystery", "Thriller"],
      "director": "Alfred Hitchcock",
      "actors": "James Stewart, Grace Kelly, Wendell Corey, Thelma Ritter",
      "plot":
          "A wheelchair-bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"
    },
    {
      "id": 35,
      "title": "Shutter Island",
      "year": "2010",
      "runtime": "138",
      "genres": ["Mystery", "Thriller"],
      "director": "Martin Scorsese",
      "actors": "Leonardo DiCaprio, Mark Ruffalo, Ben Kingsley, Max von Sydow",
      "plot":
          "In 1954, a U.S. marshal investigates the disappearance of a murderess who escaped from a hospital for the criminally insane.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxMTIyNzMxMV5BMl5BanBnXkFtZTcwOTc4OTI3Mg@@._V1_SX300.jpg"
    },
    {
      "id": 36,
      "title": "Reservoir Dogs",
      "year": "1992",
      "runtime": "99",
      "genres": ["Crime", "Drama", "Thriller"],
      "director": "Quentin Tarantino",
      "actors": "Harvey Keitel, Tim Roth, Michael Madsen, Chris Penn",
      "plot":
          "After a simple jewelry heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BNjE5ZDJiZTQtOGE2YS00ZTc5LTk0OGUtOTg2NjdjZmVlYzE2XkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_SX300.jpg"
    },
    {
      "id": 41,
      "title": "Moneyball",
      "year": "2011",
      "runtime": "133",
      "genres": ["Biography", "Drama", "Sport"],
      "director": "Bennett Miller",
      "actors": "Brad Pitt, Jonah Hill, Philip Seymour Hoffman, Robin Wright",
      "plot":
          "Oakland A's general manager Billy Beane's successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_SX300.jpg"
    },
    {
      "id": 42,
      "title": "The Hangover",
      "year": "2009",
      "runtime": "100",
      "genres": ["Comedy"],
      "director": "Todd Phillips",
      "actors": "Bradley Cooper, Ed Helms, Zach Galifianakis, Justin Bartha",
      "plot":
          "Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU1MDA1MTYwMF5BMl5BanBnXkFtZTcwMDcxMzA1Mg@@._V1_SX300.jpg"
    },
    {
      "id": 43,
      "title": "The Great Beauty",
      "year": "2013",
      "runtime": "141",
      "genres": ["Drama"],
      "director": "Paolo Sorrentino",
      "actors":
          "Toni Servillo, Carlo Verdone, Sabrina Ferilli, Carlo Buccirosso",
      "plot":
          "Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ0ODg1OTQ2Nl5BMl5BanBnXkFtZTgwNTc2MDY1MDE@._V1_SX300.jpg"
    },
    {
      "id": 45,
      "title": "Mary and Max",
      "year": "2009",
      "runtime": "92",
      "genres": ["Animation", "Comedy", "Drama"],
      "director": "Adam Elliot",
      "actors":
          "Toni Collette, Philip Seymour Hoffman, Barry Humphries, Eric Bana",
      "plot":
          "A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ1NDIyNTA1Nl5BMl5BanBnXkFtZTcwMjc2Njk3OA@@._V1_SX300.jpg"
    },
    {
      "id": 46,
      "title": "Flight",
      "year": "2012",
      "runtime": "138",
      "genres": ["Drama", "Thriller"],
      "director": "Robert Zemeckis",
      "actors":
          "Nadine Velazquez, Denzel Washington, Carter Cabassa, Adam C. Edwards",
      "plot":
          "An airline pilot saves almost all his passengers on his malfunctioning airliner which eventually crashed, but an investigation into the accident reveals something troubling.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxMjI1OTMxNl5BMl5BanBnXkFtZTcwNjc3NTY1OA@@._V1_SX300.jpg"
    },
    {
      "id": 47,
      "title": "One Flew Over the Cuckoo's Nest",
      "year": "1975",
      "runtime": "133",
      "genres": ["Drama"],
      "director": "Milos Forman",
      "actors": "Michael Berryman, Peter Brocco, Dean R. Brooks, Alonzo Brown",
      "plot":
          "A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BYmJkODkwOTItZThjZC00MTE0LWIxNzQtYTM3MmQwMGI1OWFiXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg"
    },
    {
      "id": 48,
      "title": "Requiem for a Dream",
      "year": "2000",
      "runtime": "102",
      "genres": ["Drama"],
      "director": "Darren Aronofsky",
      "actors": "Ellen Burstyn, Jared Leto, Jennifer Connelly, Marlon Wayans",
      "plot":
          "The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTkzODMzODYwOF5BMl5BanBnXkFtZTcwODM2NjA2NQ@@._V1_SX300.jpg"
    },
    {
      "id": 49,
      "title": "The Truman Show",
      "year": "1998",
      "runtime": "103",
      "genres": ["Comedy", "Drama", "Sci-Fi"],
      "director": "Peter Weir",
      "actors": "Jim Carrey, Laura Linney, Noah Emmerich, Natascha McElhone",
      "plot":
          "An insurance salesman/adjuster discovers his entire life is actually a television show.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg"
    },
    {
      "id": 50,
      "title": "The Artist",
      "year": "2011",
      "runtime": "100",
      "genres": ["Comedy", "Drama", "Romance"],
      "director": "Michel Hazanavicius",
      "actors": "Jean Dujardin, Bérénice Bejo, John Goodman, James Cromwell",
      "plot":
          "A silent movie star meets a young dancer, but the arrival of talking pictures sends their careers in opposite directions.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMzk0NzQxMTM0OV5BMl5BanBnXkFtZTcwMzU4MDYyNQ@@._V1_SX300.jpg"
    },
    {
      "id": 52,
      "title": "The Hobbit: The Desolation of Smaug",
      "year": "2013",
      "runtime": "161",
      "genres": ["Adventure", "Fantasy"],
      "director": "Peter Jackson",
      "actors": "Ian McKellen, Martin Freeman, Richard Armitage, Ken Stott",
      "plot":
          "The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_SX300.jpg"
    },
    {
      "id": 53,
      "title": "Vicky Cristina Barcelona",
      "year": "2008",
      "runtime": "96",
      "genres": ["Drama", "Romance"],
      "director": "Woody Allen",
      "actors":
          "Rebecca Hall, Scarlett Johansson, Christopher Evan Welch, Chris Messina",
      "plot":
          "Two girlfriends on a summer holiday in Spain become enamored with the same painter, unaware that his ex-wife, with whom he has a tempestuous relationship, is about to re-enter the picture.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU2NDQ4MTg2MV5BMl5BanBnXkFtZTcwNDUzNjU3MQ@@._V1_SX300.jpg"
    },
    {
      "id": 55,
      "title": "Lost in Translation",
      "year": "2003",
      "runtime": "101",
      "genres": ["Drama"],
      "director": "Sofia Coppola",
      "actors":
          "Scarlett Johansson, Bill Murray, Akiko Takeshita, Kazuyoshi Minamimagoe",
      "plot":
          "A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI2NDI5ODk4N15BMl5BanBnXkFtZTYwMTI3NTE3._V1_SX300.jpg"
    },
    {
      "id": 56,
      "title": "Match Point",
      "year": "2005",
      "runtime": "119",
      "genres": ["Drama", "Romance", "Thriller"],
      "director": "Woody Allen",
      "actors":
          "Jonathan Rhys Meyers, Alexander Armstrong, Paul Kaye, Matthew Goode",
      "plot":
          "At a turning point in his life, a former tennis pro falls for an actress who happens to be dating his friend and soon-to-be brother-in-law.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMzNzY4MzE5NF5BMl5BanBnXkFtZTcwMzQ1MDMzMQ@@._V1_SX300.jpg"
    },
    {
      "id": 59,
      "title": "Madagascar: Escape 2 Africa",
      "year": "2008",
      "runtime": "89",
      "genres": ["Animation", "Action", "Adventure"],
      "director": "Eric Darnell, Tom McGrath",
      "actors": "Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith",
      "plot":
          "The animals try to fly back to New York City, but crash-land on an African wildlife refuge, where Alex is reunited with his parents.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjExMDA4NDcwMl5BMl5BanBnXkFtZTcwODAxNTQ3MQ@@._V1_SX300.jpg"
    },
    {
      "id": 60,
      "title": "Despicable Me 2",
      "year": "2013",
      "runtime": "98",
      "genres": ["Animation", "Adventure", "Comedy"],
      "director": "Pierre Coffin, Chris Renaud",
      "actors": "Steve Carell, Kristen Wiig, Benjamin Bratt, Miranda Cosgrove",
      "plot":
          "When Gru, the world's most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gru's own, He has to fight back with new gadgetry, cars, and more minion madness.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjExNjAyNTcyMF5BMl5BanBnXkFtZTgwODQzMjQ3MDE@._V1_SX300.jpg"
    },
    {
      "id": 61,
      "title": "Downfall",
      "year": "2004",
      "runtime": "156",
      "genres": ["Biography", "Drama", "History"],
      "director": "Oliver Hirschbiegel",
      "actors":
          "Bruno Ganz, Alexandra Maria Lara, Corinna Harfouch, Ulrich Matthes",
      "plot":
          "Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator's final days in his Berlin bunker at the end of WWII.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM1OTI1MjE2Nl5BMl5BanBnXkFtZTcwMTEwMzc4NA@@._V1_SX300.jpg"
    },
    {
      "id": 62,
      "title": "Madagascar",
      "year": "2005",
      "runtime": "86",
      "genres": ["Animation", "Adventure", "Comedy"],
      "director": "Eric Darnell, Tom McGrath",
      "actors": "Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith",
      "plot":
          "Spoiled by their upbringing with no idea what wild life is really like, four animals from New York Central Zoo escape, unwittingly assisted by four absconding penguins, and find themselves in Madagascar, among a bunch of merry lemurs",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY4NDUwMzQxMF5BMl5BanBnXkFtZTcwMDgwNjgyMQ@@._V1_SX300.jpg"
    },
    {
      "id": 63,
      "title": "Madagascar 3: Europe's Most Wanted",
      "year": "2012",
      "runtime": "93",
      "genres": ["Animation", "Adventure", "Comedy"],
      "director": "Eric Darnell, Tom McGrath, Conrad Vernon",
      "actors": "Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith",
      "plot":
          "Alex, Marty, Gloria and Melman are still fighting to get home to their beloved Big Apple. Their journey takes them through Europe where they find the perfect cover: a traveling circus, which they reinvent - Madagascar style.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2MTIzNzk2MF5BMl5BanBnXkFtZTcwMDcwMzQxNw@@._V1_SX300.jpg"
    },
    {
      "id": 64,
      "title": "God Bless America",
      "year": "2011",
      "runtime": "105",
      "genres": ["Comedy", "Crime"],
      "director": "Bobcat Goldthwait",
      "actors":
          "Joel Murray, Tara Lynne Barr, Melinda Page Hamilton, Mackenzie Brooke Smith",
      "plot":
          "On a mission to rid society of its most repellent citizens, terminally ill Frank makes an unlikely accomplice in 16-year-old Roxy.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwMTc1MzA4NF5BMl5BanBnXkFtZTcwNzQwMTgzNw@@._V1_SX300.jpg"
    },
    {
      "id": 65,
      "title": "The Social Network",
      "year": "2010",
      "runtime": "120",
      "genres": ["Biography", "Drama"],
      "director": "David Fincher",
      "actors": "Jesse Eisenberg, Rooney Mara, Bryan Barter, Dustin Fitzsimons",
      "plot":
          "Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.",
      "posterUrl":
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2ODk0NDAwMF5BMl5BanBnXkFtZTcwNTM1MDc2Mw@@._V1_SX300.jpg"
    },
  ];
}

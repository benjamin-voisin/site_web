#import "./modern-cv-0.4.0/lib.typ" : resume, resume-entry, resume-item

#show: resume.with(
  author: (
      firstname: "Benjamin", 
      lastname: "Voisin",
      email: "benjamin.voisin@ens-rennes.fr", 
      phone: "(+33) 6 52 67 61 61",
      github: "benjamin-voisin",
      address: "10 rue François Elleviou, 35000 Rennes",
      positions: (
        "Software Engineer",
        "Software Architect"
      )
  ),
  date: datetime.today().display()
)

= Rsearch

= Education

#resume-entry(
  title: "Example University",
  location: "B.S. in Computer Science",
  date: "August 2014 - May 2019",
  description: "Example"
)

#resume-item[
  - #lorem(20)
  - #lorem(15)
  - #lorem(25)  
]

= Experiences


= Associative Life

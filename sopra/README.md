# Sopra Steria

This is a coding challenge sent to my university's email list about a HR initiative. It involves decrypting a message with a given detailed encrypted example along with some directives.

Below is a copy of the email in French.

## Description
Hello world,

Relevez le défi et découvrez le message codé envoyé par Sopra Steria !

```
  Fjucemffyguhz ! Cgiwqlcgf q'ylymhhaiwj lswv Nbqhh Zswnvv Gozko
  Fjwzdc-xlfx xr Cqdjmmfnag rv eicfn 16 wqyl
  Tgyarzuyx-sgas vzr ddlyrviivo !
  vohw://sok.vjwcffygtz.rfulldwarzz.bpb/gx
```

Le chiffre de César étant trop connu, inventons une nouvelle méthode de cryptage : Le décallagealphabétique-qui-dépend-de-la-lettre-précédente-ce-qui-empêche-toute-analyse-frequentielle-et-qui-est-donc-impossible-à-déchiffrer-à-moins-d-en-connaitre-la-méthode-d-encryptage. C’est parti !

**Règles**
- La première lettre du message codé est en clair
- La lettre suivante est décalée d’autant que la valeur de la lettre codée précédente.
- Si la première lettre est un A, la seconde sera décalée d’un cran
- Si la 3ème lettre du message codé est « E », alors la 4ème lettre sera décalée de 5 crans
- Le but de l’exercice est de déchiffrer un message codé.
- Les messages ne sont composés que des 26 lettres majuscules de l’alphabet latin.
- Ils ne contiennent aucun accent.
- Les espaces et caractères spéciaux ne sont pas codés.

**Exemple**
Si l’on encode « SOPRA STERIA! » on obtient « SHXPQ JDIAJK! »
- S est la 19ème lettre è 19+0 = 19 è « S »
- O est la 15ème lettre è 15+19 = 34 è 34-26 = 8 è « H »
- P est la 16ème lettre è 16+8 = 24 è « X »
- R est la 18ème lettre è 18+24 = 42 è 42-26 = 16 è « P »
- Etc...

## Code details

`sopra.rb` is a simple class that has one public method `decrypt!` that takes an encrypted message. Used TDD method to figure out the decrypting algorithm.

## How it works
- Run the RSpec tests by running `rspec` or `rspec spec/sopra_spec.rb`.
- You can also load the class in a Ruby repl and run the method:
```ruby
$ irb
  > load "sopra.rb"
  > Sopra.decrypt!("SHXPQ JDIAJK!")
```

The actual full solution is the last example in the spec file.

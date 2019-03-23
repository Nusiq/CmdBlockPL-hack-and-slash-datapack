# Wstęp
Datapack zawiera wszystkie komendy wykorzystywane w najnowszym projekcie mapy od CmdBlockPL, który docelowo ma trafić na realms.

Ze względu na spowolnienie tempa pracy nad tym projektem w ostatnim czasie zdecydowaliśmy upublicznić i udokumentować kod oraz mapę tak aby umożliwić ewentualną pomoc od społeczności w jej tworzeniu.

## Tematyka mapy
Celem projektu jest utworzenie gry hack & slash z widokiem z góry i prostą faułą. Jeśli utworzenie fabuły gry okaże się zbyt ambitnym planem gotowy produkt będzie grą polegającą na przetrwaniu jak najdłużej w walce przeciwko coraz większymi grupami coraz trudniejszych przeciwników.

## Rozgrywka
W grę będzie mogło grać od 1 do 4 graczy. Drużyna sterowana przez graczy składa się z czterech postaci - barda, strzelac, paladyna oraz maga. Gracze w dowolnym momencie rozgrywki mają możliwość zmiany postaci, którą sterują. Jeśli w grze nie ma wystarczającej liczby graczy by kontrolować wszystkie postacie naraz, ich sterowaniem zajmie się komputer.  

# Zasoby oraz dokumentacja
- Dokumentacja projektu będzie udostępniana na Wiki tego repozytorium na GitHub.
- Najnowsze wersje mapy będą dostępne tutaj: https://www.mediafire.com/folder/c3izikxbbn555/releases
- Filmiki z początkowej fazy pracy nad projektem można znaleźć na tym kanale na youtube: https://www.youtube.com/user/ZagrajmyzPszemkiem

# Struktura datapacku
Poniżej zostały przedstawione najważniejsze elementy datapacku wraz z ich opisami. Szczegółowe informacjen na temat datapacku znajdują się w dokumentacji.
```python
└───cmdblockpl
    └───data
        ├───rpg
        │   └───functions
        │       ├───ai
        │       │   ├───bosses  # AI sterujące bossami
        │       │   ├───mobs  # AI sterujące zwykłymi przeciwnikami
        │       │   ├───players  # AI sterujące postaciami graczy (gdy nie kotroluje ich gracz). 
        │       │   └───util  # Ogólne funkcje do kotroli AI wykorzystywane przy kontroli wszystkiego.
        │       │       ├───movement  # Wykorzystywane do przesuwania mobów sterowanych komendami
        │       │       └───pathfinding # Wykorzystywane do szukania trasy przez moby sterowane komendami
        │       ├───map_editor  # Pomocnicze funkcje, które pomogą budować mapę (obszar rozgrywki).
        │       ├───mechanic  # Mechaniki gry (pociski, umiejętności, efekty)
        │       │   ├───border  # Ustawianie worldborder w taki sposób by zmusić graczy do nie oddalania się od siebie.
        │       │   ├───cooldown  # (?) Obliczanie cooldownow do umiejętności graczy.
        │       │   ├───cursor  # Wyznaczanie pozycji na którą patrzy się gracz jako celu ataku dla sterowanej przez niego postaci.
        │       │   ├───health  # (?) Obsługa otrzymywanych obrażeń. Wyświetlanie życia graczy na pasku bossbar.
        │       │   └───mobhealth  # (?) Obsługa obrażeni otrzymywanych przez moby. Przydzielanie punktów doświadczenia dla graczy.
        │       ├───mobdamage # Efekty wizualne i dźwiękowe dla otrzymywania obrażeń przez moby.
        │       ├───mobdeath # Efekty wizualne i dźwiękowe wykorzystywane w wypadku śmierci mobów.
        │       ├───player
        │       │   ├───death  # Funkcje zliczające śmierci graczy i wywołujące związane z tym konsekwencje.
        │       │   ├───imposter  # Funkcje do przywoływania bytów reprezentujących postaci graczy.
        │       │   └───skill  # Funkcje aktywacji umiejętności gracza (mechaniki są w /cmdblockpl/data/rpg/functions/mechanic/)
        │       └───stats  # (?) Stałe wartości do konfiguracji gry
        └───util  # Funkcje pomocnicze. Zostaną zasąpione przez: https://github.com/Nusiq/cmdblockpl_util

```
 Niektóre elementy zostały usunięte ze względu na to, że umieszczanie ich w powyższej liście tylko zaciemniało obraz tego jak jest zbudowany projekt i nie wnosiły żadnej przydatnej informacji. Komentarze rozpoczęte od symbolu `(?)` są do zweryfikowania. Struktura projektu może się zmienić.

# DoublePendule_Physique
Projet Physique Computationel 2 HES-SO Valais-Wallis<br><br>
# Objectifs du projet
wiwiwi
## Matériel
compter
## Théorie

## Exercices
### 2 Différents types de molécules
#### Exercice 2.1 : Trouver les valeurs des attributs de la classe "Molecule" pour les molécules suivantes : $He, Ne, N2, O2$.
- REF `molecule.jl`
#### Exercice 2.2 : Quelles sont les différences entre ces molécules ? Est-ce que la théorie cinétique des gay fonctionne pour toutes ces molécules ?
Il y a différents types de gaz. Ici on a des gazs parfait, qui peuvent être simplifiés sous forme de sphères, tout en gardant une bonne précision.

Les autres gazs (non parfaits), ont des atomes qui s'embriquent les uns dans les autres, donc les simplifier sous forme de sphère parfaite, devient tout d'un coup moins précis que les gazs parfaits.

On va alors commencer cette simulation en partant du principe que toutes les molécules sont des sphères parfaites, et on developera la difficulté plus loins dans le projet.

Afin de prendre un rayon correcte pour les molécules imbriqués, nous allons utiliser le rayon covalent.
![Rayon chimiques différents](./res/img/covalent_vanderwaals.png)

### 3 Le déplacement d'une molécule
Mainteneant que ous avez réussi à créer la classe "Molécule", vous allez mettre en mouvement celle-ci. Il est possible de simplifier sa dynamique sous la form d'un mouvement de projectile sans interaction avec son environnement.
#### Exercice 3.1 : En utilisant la seconde loi de Newton, écrivez les équations gouvernant le mouvement de ces molécules.
##### `Forces`
2ème Loi de Newton : $$F = m*a$$

Forces agissant sur une molécule :
- Gravité
- Liens entre les molécules ???
- Chaleur ??
- Rotation des électrons ?

##### `Energie`
- L'`énergie`: $$E = kT$$
(E = Energie, k = constante de Boltzmann, T = Température)

- L'`énergie cinétique` d'une molécule: $$\frac{1}{2} m <u²> = \frac{3}{2} k_B T.$$

#### Exercice 3.2 : Utilisez les différences finies sur le système d'équation obtenu à la question précédente.

#### Exercice 3.3 : Implémentez ce calcul dans la méthode $computeNextPosition$ calculant la position de la molécule au pas de temps d'après. POour cette méthode, il vous est fortement conseillé de mettre en argument l'instace de la molécule puis de changer sa position directement dans la fonction.
#### Exercice 3.4 :

# Simulation simples
haha
## Lois et formules
E = mc^2
## Résolution
tadaaa

### 4 Intéraction entre deux molécules
#### Exercice 4.1 : Décrivez le type d'interaction qui peut se produire lorsque deux molécules s'approchent suffisamment l'une de l'autre. Expliquez également dans quelles conditions ce modèle d'interaction est pertinent et quelles hypothèses permettent de l'utiliser dans ce contexte.
S'il y une collision, il y a un choc mou, c'est à dire qu'il n'y a aucune perte d'énergie entre avant et après la collision.

Quand ils se rapprochent, je pense qu'il y a aussi une légère force d'attraction entre les molécuels.
#### Question 4.2 : Avant d'implémenter le modèle de collision, proposez au minimum 4 scénarios de test permettant de vérifier que votre code fonctionne correctement. Vos cas de test doivent notamment permettre de contrôler : la conservation de la quantité de mouvement, la conservation de l'énergie cinétique et l'influence de l'angle de contact entre les deux molécules. Décrivez clairement chaque scénario (conditions initiales).
- Collision frontale (0⁰):
    1. 2 molécules identiques qui vont à la même vitesse: leurs deux vitesse devrait être pareil après le collison.
    2. 2 molécules identiques qui vont à deux vitesses différentes: si la molécule `m1` va à une vitesse $\Vert\vec{v1}\Vert$ et `m2` à $\Vert\vec{v2}\Vert$, alors ils devraient s'échanger leurs normes de vitesses.
        - Avant: m1 => $\Vert\vec{v1}\Vert$, m2 => $\Vert\vec{v2}\Vert$
        - Après: m1 => $\Vert\vec{v2}\Vert$, m2, => $\Vert\vec{v1}\Vert$
    La raison pour laquelle j'ai dit norme, c'est parce que les vecteurs dépendent de l'angle de collision.
- Collision avec angle:
    3. 2 molécules identiques peut importe leurs vitesses: 
4. 2 molécules différents: 

#### Question 4.3 : Rédigez une fonction qui détecte si deux molécules sont en interaction. Cette fonction doit renvoyer true lorsque la distance entre leurs centres est inférieure ou égale à la somme de leurs rayons et false dans le cas contraire.



#### Question 4.4 : Implémentez l'algorithme étudié en cours avec Jessen permettant de mettre à jour l'état des molécules après une collision. À l'aide des cas de test définis à la question 4.2, vérifiez que votre implémentation respecte les propriétés physiques attendues.

# Régression linéaire (en cours)
```
Les formules mathématiques s'affichent dans Chrome avec l'extension « MathJax 3 Plugin for Github 
[https://chrome.google.com/webstore/detail/mathjax-3-plugin-for-gith/peoghobgdhejhcmgoppjpjcidngdfkod]».
```

## Introduction

Mémo sur les fondamentaux de la régression linéaire.

## Jeu de données (DATASET)

- m = nombre de lignes (observations),
- n = nombre de paramètres (caractéristiques).

### Vecteurs y et x 

$y \in \mathbb{R}^{(m\times1)}$

$y=\left[\begin{matrix}y^{(1)} \\\ y^{(1)} \\\ \dots \\\ y^{(m)}\end{matrix}\right]$

$x \in \mathbb{R}^{(m\times1)}$

$x=\left[\begin{matrix}x^{(1)}\\\ x^{(1)}\\\ \dots\\\ x^{(m)}\end{matrix}\right]$


### Matrice X

$X$ contient l'ensemble du jeu de données avec $n$ caractéristiques (variables) pour les $m$ observations.

Fabrication à partir des vecteurs x

$X \in \mathbb{R}^{(mxn)}$

Variables multiples (vecteur $x$).

$x^{(1)}=\left[\begin{matrix}x^{(1)}_n \\\ \vdots\\\ x^{(1)}_0\\\ \end{matrix}\right]$

La matrice $X$ contient les vecteurs $x$ transposés.

$X=\left[\begin{matrix}(x^{(1)})^{T} \\\ \vdots\\\ (x^{(m)})^{T} \\\ \end{matrix}\right]$

$X$ sous forme développée

- Une ligne = observation
- Une colonne = caractéristique

$X=\left[\begin{matrix}x^{(1)}_n & \dots & x^{(1)}_0\\\ \vdots&\ddots&\vdots\\\ x^{(m)}_n & \dots & x^{(m)}_0\\\ \end{matrix}\right]$

## Modèle
Le modèle est l'équation mathématique qui permet de faire une prévision.

Le modèle (ex ci-dessous) a des paramètres ($a$,$b$) et une variable $x$.

$f(x)=ax+b$

Sous forme vectorielle

$f=X\cdot\Theta$

## Théta

Théta est de vecteur de paramètres du modèle.

$\Theta=\left[\begin{matrix}a\\\ b\end{matrix}\right]$

Dimension du vecteur
$(n+1)\times 1$


## Fonction coût
Calcul de la moyenne des erreurs entre le modèle et le jeu de données ($y$).

L'erreur quadratique moyenne (MSE) mesure l’écart entre le réel et f(x) selon les paramètre du modèle.

$J(a,b) =\frac {1}{2 m} \displaystyle\sum_{ i = 1 }^{ m } (f ( x^{(i)} ) - y^{(i)})^2$

- $i$ correspond à une observation.
- $f ( x^{(i)})$ à la valeur calculé par le modèle
- $y^{(i)}$ à la valeur réelle du jeu de données.

soit

$J(a,b) =\frac {1}{2 m} \displaystyle\sum_{ i = 1 }^{ m }  ( ax^{(i)}+b-y^{(i)})^2$

Sous forme partiellement matricielle

$J(\Theta) =\frac {1}{2 m} \displaystyle\sum_{ i = 1 }^{ m }  ( X\cdot\Theta-y^{(i)})^2$


## Notions mathématiques

### Fonction différentiables
Une fonction différentiables est la généralisation polynomiale (dans un espace  vectoriel) de la notion de fonction dérivée pour une seule variable.

### Dérivée directionnelle
La dérivée directionnelle quantifie la variation locale en fonction d'une direction définie par un vecteur.

### Dérivée partielle
La dérivée partielle est le cas particulier d'une dérivée directionnelle selon un des axes des coordonnées (pas exemple l'axe des absisses).

### Gradient
Le gradient est l'expression d'une dérivée directionnelle en un point donné.
Le gradient pointe vers la direction de la plus forte pente. Le gradient est un scalaire.


## Dérivée partielle de la fonction coût.

$\frac{\partial{J(a,b)}}{\partial{a}}=\frac{1}{m}\displaystyle\sum_{i=1}^{m}x^{(i)}\times (ax^{(i)}+b-y^{(i)})$      

$\frac{\partial{J(a,b)}}{\partial{b}}=\frac{1}{m}\displaystyle\sum_{i=1}^{m} 1\times (ax^{(i)}+b-y^{(i)})$ 

Sous forme de matrice

$X=\left[\begin{matrix}x^{(1)}&1\\\ \vdots & \vdots\\\ x^{(m)}& 1 \end{matrix} \right]$  

$m \times ( n+1 )$

On prend la transposée de $X$

$X^T=\left[ \begin{matrix} x^{(1)} & \dots & x^{(m)}\\ 1 & \dots & 1\end{matrix} \right]$  

$(n+1) \times m$

$\frac{\partial{J(\Theta)}}{\partial{b}}=X^T\cdot (X\cdot\Theta-Y)$

$(n+1\times1)$

$X^T$ la matrice X transposée (voir ci-dessus) correspond au x et au 1 des équations (1) et (2) de dimension (n +1 x m).

$(X\cdot\Theta-Y)$ est de dimension (m x 1).


## Descente de gradient
Minimisation des erreurs pour avoir un modèle fidèle à la réalité.
Mininum de la fonction « coût » en apprentissage supervisé.
- choix des paramètres de façon aléatoire (a,b).
- calcul de la pente = dérivée en a0 $\frac{\partial{J(a_0)}}{\partial{a}}=0$
- avancement d'un pas $\alpha  = learning\ rate = vitesse\ de\ convergence\ (\ hyperparamètre\ )$


À faire compléter ci-dessous 

$J(a,b)$ est une composée de fonctions $(g \circ f)(a,b)$ (cela explique le principe de la dérivée) $f(a,b)=ax+b\ g(f)=f^2$

## Algo matrice
Algo de la descente de gradient

$\Theta=\Theta-\alpha\frac{\partial J(\Theta)}{\partial\Theta}$

$(n+1\times 1)$


## Biblioghaphie

- Aurélien Géron. (2019), *Deap Learning avec Keras et Tensorflow* (2e édition). DUNOD

## Sources

- [github : Aurélien Géron](https://github.com/ageron)
- [Machine learnia](https://machinelearnia.com/)
- [Produit matriciel](https://fr.wikipedia.org/wiki/Produit_matriciel)
- [Algorithme du gradient stochastique](https://fr.wikipedia.org/wiki/Algorithme_du_gradient_stochastique)

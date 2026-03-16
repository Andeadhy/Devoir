<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;En partant de 0, ce maximum a pour position : &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#max" algoitem="max EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#min" algoitem="min EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pos_min" algoitem="pos_min EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pos_max" algoitem="pos_max EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#serie" algoitem="serie EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#croiss" algoitem="croiss EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#decroiss" algoitem="decroiss EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#temp" algoitem="temp EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer le nombre de termes#0" algoitem="AFFICHER &quot;Entrer le nombre de termes&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="4#entrer les termes #0" algoitem="AFFICHER &quot;entrer les termes &quot;"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#serie#i" algoitem="LIRE serie[i]"/>
            <item code="5#somme#somme+serie[i]#pasliste" algoitem="somme PREND_LA_VALEUR somme+serie[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#La somme des termes est #0" algoitem="AFFICHER &quot;La somme des termes est &quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
        <item code="5#moyenne#somme/n#pasliste" algoitem="moyenne PREND_LA_VALEUR somme/n"/>
        <item code="4#La moyenne des termes est  #0" algoitem="AFFICHER &quot;La moyenne des termes est  &quot;"/>
        <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
        <item code="5#max#serie[0]#pasliste" algoitem="max PREND_LA_VALEUR serie[0]"/>
        <item code="5#min#serie[0]#pasliste" algoitem="min PREND_LA_VALEUR serie[0]"/>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#serie[i]&lt;min" algoitem="SI (serie[i]&lt;min) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#min#serie[i]#pasliste" algoitem="min PREND_LA_VALEUR serie[i]"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#max&lt;serie[i]" algoitem="SI (max&lt;serie[i]) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#max#serie[i]#pasliste" algoitem="max PREND_LA_VALEUR serie[i]"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le maximum est  #0" algoitem="AFFICHER &quot;Le maximum est  &quot;"/>
        <item code="3#max#1#pasliste" algoitem="AFFICHER max"/>
        <item code="4#Le minimum est #0" algoitem="AFFICHER &quot;Le minimum est &quot;"/>
        <item code="3#min#1#pasliste" algoitem="AFFICHER min"/>
        <item code="4#En partant de 0, ce maximum a pour position : #1" algoitem="AFFICHER &quot;En partant de 0, ce maximum a pour position : &quot;"/>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#serie[i]==max" algoitem="SI (serie[i]==max) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#pos_max#i#pasliste" algoitem="pos_max PREND_LA_VALEUR i"/>
                <item code="3#pos_max#0#pasliste" algoitem="AFFICHER pos_max"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#  Le minimum a pour position : #0" algoitem="AFFICHER &quot;  Le minimum a pour position : &quot;"/>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#serie[i]==min" algoitem="SI (serie[i]==min) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#pos_min#i#pasliste" algoitem="pos_min PREND_LA_VALEUR i"/>
                <item code="3#pos_min#1#pasliste" algoitem="AFFICHER pos_min"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Dans l'ordre croissant, vos termes seront #1" algoitem="AFFICHER &quot;Dans l'ordre croissant, vos termes seront &quot;"/>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="12#j#i+1#n" algoitem="POUR j ALLANT_DE i+1 A n">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="6#serie[i]>serie[j]" algoitem="SI (serie[i]>serie[j]) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#temp#serie[i]#pasliste" algoitem="temp PREND_LA_VALEUR serie[i]"/>
                    <item code="5#serie#serie[j]#i" algoitem="serie[i] PREND_LA_VALEUR serie[j]"/>
                    <item code="5#serie#temp#j" algoitem="serie[j] PREND_LA_VALEUR temp"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#serie#0#i" algoitem="AFFICHER serie[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#  Dans l'ordre décroissant, on aura #0" algoitem="AFFICHER &quot;  Dans l'ordre décroissant, on aura &quot;"/>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="12#j#i+1#n" algoitem="POUR j ALLANT_DE i+1 A n">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="6#serie[i]&lt;serie[j]" algoitem="SI (serie[i]&lt;serie[j]) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#temp#serie[i]#pasliste" algoitem="temp PREND_LA_VALEUR serie[i]"/>
                    <item code="5#serie#serie[j]#i" algoitem="serie[i] PREND_LA_VALEUR serie[j]"/>
                    <item code="5#serie#temp#j" algoitem="serie[j] PREND_LA_VALEUR temp"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#i#0#n-1" algoitem="POUR i ALLANT_DE 0 A n-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#serie#0#i" algoitem="AFFICHER serie[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>

use effectdata.dta, clear
* la syntaxe1111111111111
dtable PROD REV SEM AGE i.TYPSEM i.SITMAT i.EDU, name(macollection) by(CAMP, tests testnotes totals missing) /// line 1
 column(by(label, nofvlabel halign(center) font(, size(12) color(burlywood) variant(smallcaps) bold italic strikeout underline) /// line 2
 smcl(error) latex(textsc) shading(background(beige) foreground(antiquewhite) pattern(diagCross))) /// line 3
 test(Les tests statistiques, halign(center) nohide font(, size(12) color(darkblue) variant(normal) bold italic strikeout underline) /// line 4
 smcl(text) latex(textbf) shading( background(crimson) foreground(coral) pattern(gray12p5))) ///
 total(Les Totaux, halign(center) nohide font(, size(12) color(aliceblue) variant(allcaps) bold italic strikeout underline) /// line 6
 smcl(result) latex(textbf) shading( background(aqua) foreground(blue) pattern(solid)))) /// line 7
 sample(Les effectifs, statistic(frequency) place(inlabels) font(Mon titre, size(12) color(crimson) variant(normal) bold ///
 italic strikeout underline) smcl(text) latex(textsf) shading( background(chocolate) foreground(coral) pattern(horzStripe))) ///
 continuous( AGE SEM PROD REV, statistics( mean variance) test(kwallis) font(Les variables continues, size(12) color(red) /// line 10
 variant(allcaps) bold italic strikeout underline) smcl(result) latex(textbf) shading( background(violet) foreground(teal) /// line 11
 pattern(gray50) )) factor(SITMAT EDU, statistics( fvproportion) test(kendall) font(Les variables catégorielles, size(12) color(tan) ///
 variant(allcaps) bold italic strikeout underline) smcl(result) latex(textbf) shading( background(bisque) foreground(azure) ///
 pattern(pct5))) nformat(%9.1g  frequency sumw semean mean ) title(Tableau 1: Les statistiques) note(Source: ANSD, 2024) ///
 notestyles( font(LA NOTE, size(12) color(aliceblue) variant(normal) bold italic strikeout underline) smcl(result) latex(textbf) ///
 shading( background(beige) foreground(chartreuse) pattern(pct10) ) ) export("C:\Users\IBRAHIMA TALL\Documents\Calcul.xlsx", as(xlsx) ///
 sheet(mafeuil, replace) cell(A2) modify) varlabel fvlabel listwise halign(center)

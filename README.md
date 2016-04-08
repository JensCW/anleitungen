# Versuchsanleitungen des Physikalischen Anfängerpraktikums der Universität Heidelberg

## Typesetting

- Der Stil der Versuchsanleitungen ist in der LaTeX-Klasse `papanleitung.cls` definiert. Jede Versuchsanleitung braucht nur diese Klasse zu verwenden:
	
	```tex
	\documentclass{../papanleitung} % Verwende die Versuchsanleitung-Klasse im übergeordneten Ordner

	% Setze Metadaten des Versuchs
	\def\versuchnr{223}
	\def\versuchshorttitle{Brownsche Bewegung}
	\def\versuchtitle{Messung der Boltzmannkonstante \\ Teil I
	Brownsche Bewegung}

	\begin{document}
	
	% Inhalt hier, Titel wird automatisch gesetzt
	
	\end{document}
	```
	
- Bezieht sich ein Abschnitt nur auf die Auswertung mit Python oder Origin, verwende die Environment `usingpython` oder `usingorigin`:

	```tex
	\begin{usingpython}
	% Hinweis bei Auswertung in Python
	\end{usingpython}

	\begin{usingorigin}
	% Hinweis bei Auswertung in Origin
	\end{usingorigin}
	```

	Der Stil eines solchen Abschnitts ist in `macros.tex` definiert.

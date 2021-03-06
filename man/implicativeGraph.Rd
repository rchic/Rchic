% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/implicativeGraph.R
\name{implicativeGraph}
\alias{implicativeGraph}
\title{Displays the Implicative Graph.}
\usage{
implicativeGraph(fileName, list.variables, computing.mode = 1,
  complete.graph = 0)
}
\arguments{
\item{fileName}{name of the file containing the data}

\item{list.variables}{list containing all the variables used in the computation}

\item{computing.mode}{controls the computing mode: 1=classic implication, 2=classic implication+ confidence, 3=implifiance}

\item{complete.graph}{displays a complete graph (with a=>b and b=>a rules)}
}
\description{
Reads the ASI rules, selects the rules according to the toolbar and calls rgraphviz before displaying the rules.
}
\details{
This function allows you to compute the implicative graph. As its name suggests, this graph illustrates implication rules,
or usually called association rules. Nevertheless the way to compute these association rules is completely different from
the classical association rules (computed with the conditional probability).
In the implication graph, only the strongest implication rules are displayed. In pratice, the term implication is not totally
true because it is quasi-implication. In mathematic, if we have an implication there is no counter-example. With Statistical
Implicative Analysis, quasi implications can have some counter-examples. Also for commodity reason, the term implication will
be used instead of quasi implication.

On the right of the figure, one can select 
the threshold allowing us to select only the strongest implications. It is possible to select different thresholds (up to 4).
The color of each threshold can be changed. Consequently a user can quickly see the implications in this graph. For example,
in the first figure we can see that two implications have a implication index greater than 0.99 (this number is multiplied 
by 100 in rchic for comodity reason). These implications are: craftiness implies malignant and powerful implies strong.

\if{html}{\figure{implicative1.png}}
\if{latex}{\figure{implicative1.png}{options: width=15cm}}

If one change the threshold parameters, the graph is automatically displayed again as in the next figure.
\if{html}{\figure{implicative2.png}}
\if{latex}{\figure{implicative2.png}{options: width=15cm}}

In this figure, the number of implications is greater. According to the color of the implication, a user can quickly see
what the the interesting implications.
}
\author{
Raphael Couturier
}

# Machine Learning


Unsupervised Learning

* Draw inference from data
* Previously undetected patterns
* Examples
  * Clustering
  * Anomaly detection
  * Principal component analysis

Supervised Learning

* Learn from examples
* Goal is to predict category or value
* Examples
  * Classifying tumours from images
  * Predicting housing prices
  * Identifying fraud

Reinforcement Learning

* Learn from environment
* Maximise reward
* Does not require examples
* Combination of exploration and exploitation
* Example - agent taking acitons in environment and gettting reward (not big in exam)


Two approaches to Machine Learning

1. Symbolic Artifical Intelligence
2. Neural networks and deep learning



Symbolic Artifical Intelligence

* Symbols represent entities and attributes
* Manipulate symbols to make inferences
* Variety of ways to manipulate symbols
* Some tied to models of reasonning
  * Logic
  * Congitive science

Symbolic Machine Learning

* Domain of interest is modeled using symbols
* Set of features e.g.
  * Length of stay in hospital
  * Type of operation
  * Age at operation

Variety of Symbolic ML Algorithms

* Decision trees
* Random forests (multiple decision trees)
* Naive Bayes (conditional probability)
* Support vector machines (SVMs)
* K Nearest Neighour

Neural networks

* Inputs, weights, biases, outputs
* Activation functions
  * Examples
    * Sigmoid "bendy linear function going up"
    * TanH
    * RelU "Rectified Linear Unit (flat and then linear up)
  * It needs to be non-linear because we want the output that is non-linear (otherwise you would be using linear solvers)
* Deep learning networks
  * More than 3 layers
  * Hard to learn the weights
  * Backpropogation algorithm used to adjust weights (based on error how fast can we get to ideal point)



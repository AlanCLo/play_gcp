# Machine Learning

TODO:

* Study: terms on https://developers.google.com/machine-learning/glossary

---

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


---

Basics of Machine Learning

Terms

* Features: Variables that can be used in supervised learning as inputs to predict with
* Labels: Classifications; the results types you want to predict
* Parameters: Values in the model that are learned and tweaked by learning
* Hyper parameters: Defines the model but not learned from the data e.g. number of layers in neural network, how deep should the decision tree be...

Feature Engineering

* Process of identifying useful features
* Ways to engineer features
  * Transform existing feature - lowercase values, map numeric values
  * Bucketing: Create subgroup of feature values and reduce number of values
  * Feature Cross: The catesian product of two or more features; for each feature_a, create a combination with feature_bs'
  * Binary features: is_red, is_blue....
  * Decompose features into parts: date into year/month/day values
  * One-hot encoding: Map from an attribute into a bit in a binary array. e.g. Red=100, Blue=010...
  * Normalisation: Map to a standard like -1 to 1


Stages of Model Building

1. Define problem
2. Collect data
3. Define evaluation method; judge how good the model is
4. Prepare the data
5. Split data into training, validating and test sets
6. Execute algorithm on data to build the model
7. Validate the model (and Tune the model's hyper parameters as needed)
8. Test Model - final assessment of the model


Evaluation

* Common evaluation techniques:
  * Accuracy tablulate:
    * X axis: Actual True/False
    * Y axis: Predicted True/False
    * Use these 4 cells to derive accuratcy
    * (TP+TN)/(TP+TN+FP+FN)
    * Hence ("overall") Accuracy
  * Precision: is percent of how many predicted positives were correct
    * TP / (TP+FP)
    * "You made this many calls something is positive, how often were you right?" Hence Precision
  * Recall: percentage against now many actual positives identified
   * TP / (TP+FN)
   * "There is actually this many positves, how many did you find?" Hence Recall
  * Mean squared error (regression)

Gradient Descent

In minimising errors

* Loss (Y-axis): Measure of errors
* Weight (X-Axis): The weight parameter
* Gradient (dy/dx): Used to determined whether the next step should be up or down
* Learning Rate: A hyperparameter that determins how much the next step should jump by on the curve
* Optimal Weight: What you are looking for; where the loss is minimal


Types of Gradient Descents

* Batch Gradient Desent
  * Loss is calcuated over entire trainin set
  * Slow on large data sets

* Stochastic Gradient Desecent
  * Weights updated after each instance
  * Training instances are randomly sorted (stochastic). It must be for this to work well
  * Random walk avoids getting stuck

* Mini batch Gradient Descent
  * Between batch and stochastic


How to Calculate Gradient? Backpropagation

 * Compute grapident of mapping function over an input-output pair
 * Calculate partial derivate of loss function relative to each weight
 * Backpropagation more effcient tha naive calculation
   * Avoids duplication when computing gradient at a layer
   * Computes graidents with respect to final output (loss) rather than computing deirvatives of values of hidden layers with respect to changes in weights
   * Key to know: More efficient than naive


Troubleshooting ML

* Underfitting
  * Model performs poorly on training and validation data
  * Correct for underfitting
    * Increasing the complexity of the model
    * Increase training time, the epochs (how many passes over the training set)
* Overfitting
  * Model performs well on training data and poorly on validation data
  * Correct for overfitting
    * Regularisation, which limits information captured
      * Generally class of techniques to limit information used in training
      * If the training set has outliars, Regularisation helps with limiting how much gets processed
* Bias and Variance
  * Bias error is result of missing relationship between features and labels
    * Did not sufficiently generalise from training data
  * Variance error is due to sensitivity in small fluctuations in training data
    * Variance is the difference among the set of predictions
  * Interpretation:
    * Low Bias  + Low Variance  = "Bull's eye"
    * Low Bias  + High Variance = "On target but its a shot gun blast"
    * High Bias + Low Variance  = "You are off the target, but sharp shooter"
    * High Bias + High Variance = "You are way off and using a shotgun"


Ways to ML on GCP

* Cloud AutoML
  * Designed for model builders with limited ML experience
  * GUI for training, evalatuating and tuning
  * Services for sight, lanugage and structured data
  * AutoML Tables uses structued data (eg database) to build regression and classification models
* AI Platform Training
  * Trains and runs models built in:
    * Tensorflow
    * Scikit learn
    * XGBoost
  * Hosted framework but can run custom containers
  * Service provisions the compute resources you need and then executes them
* Kubeflow
  * Machine learning tookkit for K8s
  * Packages models like applications
  * Compose, deploy and manage ML workflows
* Dataproc and Spark ML
  * Dataproc is managed Spark and Hadoop
  * Spark ML is ML lib
    * ML Algorithms
    * Feature engineering
    * Pipelines
    * Persistence
    * Utilities
* BigQuery ML
  * BQ is serverless analytical database
  * BigQuery ML braings ML learning functions in SQL
  * Key advantages
    * Ability to train and run models in BQ
    * Use SQL not Python or ML frameworks


Pretrained Models in GCP

* Vision Services
  * Vision AI
    * Classify images
    * Recognise objects, faces, and words
    * Supports transfer learning
  * Video AI
    * Extract metadata
    * Identify key objects
    * Annotate video content
* Language
  * Natural language
    * Syntactice structures
    * Extract information about people, places and things
    * Content classification
    * Sentiment analysis
  * Translation
   * Translate between languages
* Conversation
  * Speech-to-text api
  * Text-to-speech API
    * 32 voices
  * Dialogflow
    * Development suite for conversational interfaces


---

Deploying ML modules

* AI Platform
  * Serverless GCP option
  * Use to train and deploy ML Models
  * Components
    * Training service
    * Prediction service
    * AI Platform Notebooks (Jupyter Notebooks)
* Cloud Dataproc
  * Spark includes MLLibs
    * Basic Statistics
    * Classification
    * Regression
    * Clustering
    * Dimension reduction
    * Collaborative filtering
* Self Managed Deployments
  * Compute Engine
    * Deploy model to VM as a service
  * K8s Engine
    * Deploy model within a container
    * Cloud Run alternative for container
* GPUs and TPUs


---

Monitoring and Logging ML

To understand the performance of a model

* Metrics to monitor
  * traffic patterns
  * Error rates
  * Latency: Time taken to process one unit of data provided only one unit of data is processed as a time
  * Resource utilisation
* Configure alerts in Cloud Monitoring

* AI Platform to Cloud Monitoring
  * Error count
  * Latencies
  * Accelerator utilisation
  * Memory utilisation
  * CPU Utilisation
  * Network
  * Prediction counts

* ML Monitoring Best Practices
  * Monitor for Data Skew
    * Things in the real world changing that invalidates your training data
  * Watch for changes in dependencies
    * e.g. the way a input is transformed that may effect your model
  * Models are refreshed as needed
  * Assess model predicition quality
  * Test for unfairness


Bias and Unfairness in ML Models

* Bias: is overloaded term
  * Sometimes Bias and Variance
  * Sometimes Bias an Unfairness

* Fairness
  * Anti-classification
    * Protected attributes not used in model
    * Example: gender
  * Classification parity
    * Measures of predictive performance are equal across groups
  * Calibration
    * Outcomes are independent of protected attributes

* Resources
  * Google Machine Learning Fairness
  * AI Fairness 360
  * FairML
  * What-IF tool


---

BigQuery ML

Creates ML in SQL

Several kinds of Models:
* Linear regression
* Binary and multiclass logistic regression
* K-means clustering
* Time series forecast
* Matrix factorisation
* Boosted Tree and XGBoost
* Tensorflow (imported)
* AutoML tables (just provde the data and it will decided which method to use)



# Detecting Credit Card Fraud with XGBClassifier

The goal is to create a model which can correctly predict if a transaction on a credit card was fraudulent or not.

For this model I will mainly be focusing on reducing Type II errors. These are fraudulent transactions that were not marked as fraud. From a business standpoint, a credit company would benefit more from catching fraudulent activity even if it comes at the cost of incorrectly flagging some normal transactions and forcing the customer to call the company and verify a purchase. 
    
    Flagging Fraud (Type II) > Incorrectly Flagging Valid Transaction (Type I)
    
Presentation Slides: https://docs.google.com/presentation/d/e/2PACX-1vRCpPyxbZksDqNqqdO4TcMsiid87CSDTmV1i0Qvw8Z2zLr0I7Bgy8NLmA0A5nndVxSnzbzbiYoEGyiu/pub?start=false&loop=false&delayms=10000

## Data

Data is from: https://www.kaggle.com/mlg-ulb/creditcardfraud

The dataset contains credit card transactions in September 2013 by European cardholders. 

Consists of 284,807 rows and 31 columns (30 features)

Due to confidentiality issues, they couldn’t release original feature names or background information

V(1-28) features were transformed using PCA


## Models

Two XGBClassifers models were created, one using undersampled data and the other using upsampled (oversampled) data.

### Prerequisites / Packages

Here are the packages you need to install

```
Numpy
Pandas
Matplotlib
Seaborn
Scipy
Imblearn
Xgboost

```

### Files

The files in the directory

```
CreditCardFraud-Undersample (Model creation using undersampled data)
CreditCardFraud-Upsample (Model creation using upsampled data via SMOTE)
CreditCardFraud-UpsampleWRONG (Model creation using upsampled datat via copying, which leads to a very overfit model)
MemoryShrink (Method for reducing the memory usage for the data which is called in the other files)
RFCvsXGB (Comparing a XGBClassifer and a Random Forest Classifer)
Credit Card Fraud Detection with XGB.pdf - Slide Deck

```

## Method

Both models go through multiple iterations to find the optimal features and parameters.

1. Memory Reduction
2. Bias Correction (via undersampling or oversampling)
3. Base Test
4. Correlation Matrix Feature Reduction
5. Feature Selection based on Importance
6. Parameter Tuning

## Results

The model built with the undersampled data had ~96.5% accuracy with 3.5% type I errors and ~.0035% type II errors.

The model built with upsampled data had ~99% accuracy with ~1% type I errors and .01544% type II errors. 

Depending on the companies preference, either one could be used.

## Improvements

Both models could spit out probabilities for each piece of data and those could be added as a feature to create a model that is even stronger.

More work could be put into feature selection.

More data for testing would be ideal!

## Authors

* **Evan Bicher**

## Acknowledgments

* Thinkful
* Mike Ricos
* StackOverflow
* Kaggle


# Detecting Credit Card Fraud with XGBClassifier

The goal is to create a model which can correctly predict if a transaction on a credit card was fraudulent or not.

## Models

Two models were created, one using undersampled data and the other using upsampled (oversampled) data.

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

```

## Method

Both models go through multiple iterations to find the optimal features and parameters.

1. Memory Reduction
2. Base Test
3. Correlation Matrix Feature Reduction
4. Feature Reduction based on Importance
5. Parameter Tuning


## Authors

* **Evan Bicher**

## Acknowledgments

* Thinkful
* Mike Ricos
* StackOverflow
* Kaggle


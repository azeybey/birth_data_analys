# Predicting the Need for Assisted Ventilation in Newborns

Category: Healthcare, Machine Learning, Classification

## Introduction

The purpose of this project was to develop a predictive model for determining whether a newborn would require assisted ventilation immediately after birth. Early prediction can help healthcare professionals prepare for necessary interventions, ultimately leading to improved neonatal outcomes. 

The research question was: Can we predict the need for assisted ventilation in newborns using available birth data?



## Dataset

Te dataset was collected by the CDC, which contains vital information on live births within the United States to U.S. residents.

```bash
wget https://data.nber.org/natality/2019/nber_output/US/birth_2019_nber_us.zip
unzip birth_2019_nber_us.zip

wget https://data.nber.org/natality/2020/nber_output/US/birth_2020_nber_us_v1.csv
```

The dataset used in this project contained birth records with several features, such as:

- Mother's age

- Father's age

- Prior living and dead births

- Interval since last pregnancy

- Cigarettes smoked before pregnancy

- Mother's Body Mass Index (BMI)

- Pre-pregnancy diabetes

- Pre-pregnancy hypertension

- Plurality recode

- Sex of the infant

- Assisted ventilation (target variable)


```python
cols = [
            "DOB_MM", #Month
            "MAGER", #Mother's Age
            "FAGECOMB", #Father’s Age
            "PRIORLIVE", #Prior Births Now Living
            "PRIORDEAD", #Prior Births Now Dead
            "ILOP_R", #Interval Since Last Other Pregnancy Recode
            "CIG_0", #Cigarettes Before Pregnancy
            "BMI", #Mother Body Mass Index
            "RF_PDIAB", #Pre-pregnancy Diabetes
            "RF_PHYPE", #Pre-pregnancy Hypertension
            "DPLURAL", #Plurality Recode
            "SEX", #Sex of Infant
            "AB_AVEN1", #Assisted Ventilation (immediately)
        ]
```

The data was preprocessed to handle missing and unknown values, convert categorical variables to numerical values, and cast data types appropriately.

## Baseline Performance

Three machine learning models were selected to serve as the baseline:

- Logistic Regression

- Support Vector Machines (SVC)

- Random Forest Classifier

These models were trained on the dataset and their performance was evaluated using classification metrics such as accuracy, precision, recall, and F1 score.

Support Vector Machines (SVM) can be computationally expensive, especially when dealing with large datasets or high-dimensional data. Due to the high volume of the Birth Data(616382, 12) and limited computational resources, the SVC model training process couldn't be completed.

## Experiments

Five experiments were conducted to improve the baseline models:

- Feature scaling: The continuous features were scaled using the StandardScaler.

- Feature engineering: Polynomial feature (2nd order) was added to the dataset.

- Dimensionality reduction: Principal Component Analysis (PCA) and Linear Discriminant Analysis (LDA) were applied to the dataset.

- Grid search for Random Forest: A grid search was conducted to find the optimal hyperparameters for the Random Forest classifier.

Experimenting with other models: Gradient Boosting and XGBoost classifiers were evaluated.

## Table/Discussions

The results of each experiment were compared with the baseline models. The performance of each model was assessed using classification metrics such as accuracy, precision, recall, and F1 score, as well as confusion matrices. The trade-offs between model complexity, training time, and performance were discussed to determine the most suitable model.

## Recommended Model

Based on the experimental results, the most suitable model was selected. This model provided the best balance between accuracy, generalizability, and computational efficiency. The recommended model can be used by healthcare professionals to predict the need for assisted ventilation in newborns, helping them make timely decisions and improve neonatal outcomes.

After conducting extensive experimentation with numerous combinations of machine learning models and preprocessing techniques, we have arrived at a recommendation for an optimal pipeline that demonstrates superior performance. 

The recommended pipeline consists of two primary components: Linear discriminant analysis (LDA) and Random Forest Classifier (RFC). Initially, the LDA model, with n_components=1, is employed to reduce dimensionality and extract the most relevant topics from the input data. Subsequently, a Random Forest Classifier is utilized to make predictions based on these transformed features. The optimal RFC parameters, determined through experimentation, are as follows: max_depth=20, min_samples_leaf=1, min_samples_split=2, and n_estimators=50, with a random_state=42 to ensure reproducibility. This combination has demonstrated high performance in terms of accuracy, robustness, and generalizability, making it the ideal choice for deployment in the given problem domain.

The recommended model achieved an accuracy of 0.9526, indicating that it was able to correctly predict the need for assisted ventilation in newborns in 95.26% of cases. While this may initially seem impressive, it is important to consider that the assisted ventilation rate in newborns is around 5%. Given the data distribution, an accuracy of 95.26% is not sufficient in effectively predicting the positive cases, which is the primary focus of the research question. The classification report further revealed a precision of 0.61, recall of 0.01, and f1-score of 0.02 for positive cases, where assisted ventilation was needed. These metrics highlight the model's inadequacy in predicting the positive cases.

The primary limitation of the model is its inability to effectively predict positive cases, despite the high overall accuracy. This limitation can be attributed to the imbalanced nature of the dataset, which is dominated by negative cases. Consequently, the model might have learned to predict the majority class more accurately, leaving the minority class underrepresented.

## Conclusion and Future Work

In conclusion, the recommended model's high overall accuracy of 95.26% is misleading, as it fails to adequately predict newborns requiring assisted ventilation. As this is the main focus of our research question, further improvements must be made to enhance the model's performance in predicting positive cases. Future work should focus on addressing the class imbalance issue, potentially through techniques such as oversampling the minority class, undersampling the majority class, or using a combination of both methods. Additionally, exploring more sophisticated machine learning algorithms or ensembles specifically designed to handle imbalanced data may improve the model's ability to predict the need for assisted ventilation in newborns.

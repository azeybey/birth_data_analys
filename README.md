Predicting the Need for Assisted Ventilation in Newborns

Category: Healthcare, Machine Learning, Classification

1. Introduction

The purpose of this project was to develop a predictive model for determining whether a newborn would require assisted ventilation immediately after birth. Early prediction can help healthcare professionals prepare for necessary interventions, ultimately leading to improved neonatal outcomes. The research question was: Can we predict the need for assisted ventilation in newborns using available birth data?

2. Dataset

The dataset used in this project contained birth records with several features, such as:

Mother's age
Father's age
Prior living and dead births
Interval since last pregnancy
Cigarettes smoked before pregnancy
Mother's Body Mass Index (BMI)
Pre-pregnancy diabetes
Pre-pregnancy hypertension
Plurality recode
Sex of the infant
Assisted ventilation (target variable)
The data was preprocessed to handle missing and unknown values, convert categorical variables to numerical values, and cast data types appropriately.

3. Baseline Performance

Three machine learning models were selected to serve as the baseline:

Logistic Regression
Support Vector Machines (SVC)
Random Forest Classifier
These models were trained on the dataset and their performance was evaluated using classification metrics such as accuracy, precision, recall, and F1 score.

4. Experiments

Five experiments were conducted to improve the baseline models:

Feature scaling: The appropriate features were scaled using the StandardScaler.
Feature engineering: Polynomial features (2nd and 3rd order) were added to the dataset.
Dimensionality reduction: Principal Component Analysis (PCA) was applied to the dataset.
Grid search for Random Forest: A grid search was conducted to find the optimal hyperparameters for the Random Forest classifier.
Experimenting with other models: Gradient Boosting and XGBoost classifiers were evaluated.

5. Table/Discussions

The results of each experiment were compared with the baseline models. The performance of each model was assessed using classification metrics such as accuracy, precision, recall, and F1 score, as well as confusion matrices. The trade-offs between model complexity, training time, and performance were discussed to determine the most suitable model.

6. Recommended Model

Based on the experimental results, the most suitable model was selected. This model provided the best balance between accuracy, generalizability, and computational efficiency. The recommended model can be used by healthcare professionals to predict the need for assisted ventilation in newborns, helping them make timely decisions and improve neonatal outcomes.

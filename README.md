# Bangkit-CloudComputing ☁ 🚀
- Cloud Architecture<br><br>
![Cloud Architechture](https://github.com/pangan-kita/Cloud-Computing/assets/147965614/c82aa432-9635-4cd7-87c0-7853e7cdd30c)
# Member
- Arya Gunawan - C107D4KY0917
- Natashya Welhelmina - C267D4KX0258
# Table of Contents
Cloning Tutorial Documentation:
- [Classification API](#classification-api)
- [Backend API](#backend-api)
# Classification API
## Setup Service Account
- Go to IAM & Admin > Service Accounts or click [here](https://console.cloud.google.com/iam-admin/serviceaccounts).
- Select your project.
- Click Create Service Account
- Set your name, Select role Cloud Storage > `Storage Admin`
- Click your service account email > KEYS > Select ADD KEY and click Create new key.
- Select JSON and click CREATE.
- Save your credential account.

## Deploy to Cloud Run
- Open your Cloud Shell by clicking [here](https://shell.cloud.google.com/).
- Set your project.
```bash
  gcloud config set project [PROJECT_ID]
```
- Clone this repository by the below command and go to the Classification-API directory.
```bash
  git clone [repository github]
  cd enter the project folder
```
- - In the directory open file `.env.example` and edit it.
```bash
  nano .env.example
```
- Deploy the API by running the command on your cloud shell.
```bash
  gcloud builds submit --tag gcr.io/PROJECT_ID/NAME CLOUD RUN:1.0.0
  gcloud run deploy NAME CLOUD RUN --image gcr.io/PROJECT_ID/NAME CLOUD RUN:1.0.0 --platform managed --region LOCATION --allow-unauthenticated
```
- Type `classification-api` as the service name and select your region the same as your bucket.
- Wait until it finishes.

# Backend API
## Setup Cloud SQL
- Open [Google Cloud Console](https://console.cloud.google.com/) here.
- Go to Cloud SQL.
- Choose MySQL as the database engine.
- Type your instance id and password.
- Choose a region and set your Zonal availability as Single Zone.
- On a Customize your instance, click `SHOW CONFIGURATION OPTIONS`.
- Click Connections and select Public IP as an Instance IP assignment.
- Click add a network in the network column type `0.0.0.0/0` and click done.
- Hit `CREATE INSTANCE` button.

## Setup Cloud Storage
- Open [Google Cloud Console](https://console.cloud.google.com/) here.
- Go to Cloud Storage.
- Create a bucket by clicking CREATE button.
- Set your bucket name.
- Choose your region.
- Set a default class (Standard).
- Uncheck the <I>Enforce public access prevent ...</I>
- Select Access Control as `Fine-grained`.
- Then, hit CREATE.
- On your buckets, click the three dots at the right of your bucket.
- Click Edit Access and click Add Principal.
- In the new principal column type `allUsers`.
- In the role column select Cloud Storage > `Storage Object Viewer`.
- Click Save.

## Deploy to Cloud Run

- Open your Cloud Shell by clicking [here](https://shell.cloud.google.com/).
- Set your project.
```bash
  gcloud config set project [PROJECT_ID]
```
- Clone this repository by the below command and go to the Backend-pangankita directory.
```bash
   git clone [repository github]
   cd enter the project folder
```
- - In the directory open file `.env.example` and edit it.
```bash
  nano .env.example
```
- Deploy the API by running the command on your cloud shell.
```bash
  gcloud builds submit --tag gcr.io/PROJECT_ID/NAME CLOUD RUN:1.1.0
  gcloud run deploy NAME CLOUD RUN --image gcr.io/PROJECT_ID/NAME CLOUD RUN:1.1.0 --platform managed --region LOCATION --allow-unauthenticated
```
- Wait until it finishes.
 

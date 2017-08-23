# Environment to run Kubernetes The Hard Way.

I'd rather not pollute my global namespace with dependencies, credentials & other settings from one project.
One of those projects is following the k8s-the-hard way.

## Usage
1. Run `./shell.sh`
2. Run `gcloud auth login`
3. Optionally, create a special project to play with:
   a. `gcloud projects create $YOUR_PROJECT NAME`
   b. `gcloud config set project $YOUR_PROJECT_NAME`
   c. `gcloud config set compute/region europe-west1`,
      `gcloud config set compute/zone europe-west1-b`.

4. Complete the tutorial!

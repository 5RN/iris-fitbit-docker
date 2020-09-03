# iris-fitbit-docker
import fitbit data into InterSystems IRIS for analytics

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation 

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/5RN/iris-fitbit-docker.git
```

Open the terminal in this directory and run:

```
$ docker-compose build
```

3. Run the IRIS container with your project:

```
$ docker-compose up -d
```

## How to Use it

Open IRIS terminal:

```
$ docker-compose exec iris iris session iris
USER>zn "FITBIT"
FITBIT>set sc = ##class(Fitbit.Data.Ingest).LoadArchive("/usr/testdata")
```

## Analytics is enabled by the installer

Four cube definitions are available:
1. AltitudeByDay
2. AverageHeartrateByDay
3. CaloriesBurnedByDay
4. StepsByDay

These cubes will need to be built, once data has been ingested via IRIS terminal (see section above)

Navigate to [Analytics -> Architect](http://localhost:9092/csp/fitbit/_DeepSee.UI.Architect.zen?$NAMESPACE=FITBIT&$NAMESPACE=FITBIT&) in Management Portal. If your IRIS instance is not runninig on port 9092, you will need to ammend the linked URL.

Click Open button. Select each of the 4 cubes in turn and Click Build button.

# Pivot tables, dashboards and widgets

Now, pivot tables can be designed via Analytics -> Analyzer in Management Portal for each cube.

Dashboards and Widgets are built via Analytics -> User Portal after that.

## What's inside the repository

## ObjectScript classes

* Defining mappings for JSON data structures.
* Ingesting and Updating Data from Fitbit
* Analytics cube definitions

## Sample data

This data is loaded into /usr/testdata by Dockerfile during build process. It covers all identified types of Fitbit data available but is tiny subset in timeline terms. Included here primarily to demonstrate features and functionality of the solution.

### Dockerfile

Dockerfile which starts IRIS and imports Installer.cls and then runs the Installer.setup method, which creates FITBIT Namespace and imports ObjectScript code from /src and /testdata folders into it.

### .vscode/settings.json

Settings file to let you code in VSCode with [VSCode ObjectScript plugin](https://marketplace.visualstudio.com/items?itemName=daimor.vscode-objectscript))

### .vscode/launch.json
Config file if you want to debug with VSCode ObjectScript

[Read about all the files in this artilce](https://community.intersystems.com/post/dockerfile-and-friends-or-how-run-and-collaborate-objectscript-projects-intersystems-iris)

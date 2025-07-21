# MettleCI Data Fabrication Generator Bundles

## Using these bundle files

Instructions on how to download and use these bundle files to provide new data fabrication capabilities for MettleCI Workbench can be found [here](https://docs.mettleci.io/datafab).

Instructions on how to create your own custom data fabrication capabilities for MettleCI Workbench can also be found [under the same documentation section](https://docs.mettleci.io/datafab).

## How to Submit a Generator Bundle File via Pull Request

Thank you for contributing! Please follow the steps below to create a pull request and submit your generator bundle file to this repository.

### 📁 1. Fork the Repository

1. Go to the [repository page](https://github.com/MettleCI/mettleci-data-fabrication).
2. Click the **Fork** button (top right) to create a copy of the repository in your own GitHub account.

### 🔀 2. Clone Your Fork

```bash
git clone https://github.com/MettleCI/mettleci-data-fabrication.git
cd https://github.com/MettleCI/mettleci-data-fabrication
```

### 📄 3. Add Your JSON File

1. Place your JSON file in the `/bundles` directory.  

Instructions on creating a custom data fabrication bundle file can be found in [the documentation](https://docs.mettleci.io/datafab).

### 📋 4. Add a test script (optional)

1. Optionally, place a test script in the `/tests` directory.  

The time taken to approve your submission will be shorter if you provide a script which demonstrates the operation of your genreators.  This is as simple a providing a file containing a `mettleci fabrication test` command for each of your generators.  The `bundles/tests/test_stocks.sh` file provides an example test script you can use for guidance. 

### ✅ 5. Run Pre-Commit Checks (Required)

⚙️ Generator Requirements
All submitted generators must function correctly and produce valid output without errors. Please test your generator thoroughly before committing it, using the `mettleci fabrication test` command documentated [here](https://datamigrators.atlassian.net/wiki/spaces/MCIDOC/pages/3285811201/Fabrication+Test+Command).

Submissions that fail due to runtime exceptions, invalid bundle structures, or improper formatting may be rejected or require revision. Ensuring that your generators run cleanly is essential to maintaining the quality and reliability of this repository.

Run checks locally before committing:

```bash
mettleci fabrication test -path bundles/your-bundle-file.json -generator {your-generator-name}
```

> ⚠️ **Please ensure any data generator definitions submitted to this public repository do not contain any Intellectual Property or Personally Identifiable Information.**

### ✅ 6. Commit Your Changes

```bash
git add bundles/your-bundle-file.json
git commit -m "Added a new bundle file which generates {description}"
```

> Replacing `{description}` with text explaining the type of data created by your bundle file

🔀 **Branching Policy:** 
Please do not create a new branch when making your contribution. All pull requests should be made directly against the main branch of the repository. Contributions made from feature or topic branches will not be accepted. To keep things simple and consistent, work in your fork's main branch and open your pull request from there.

### 🔄 7. Push to Your Fork

```bash
git push origin main
```

### 🚀 8. Open a Pull Request

1. Visit your fork on GitHub.
2. Click the **Compare & pull request** button.
3. Fill in a meaningful title and description.
4. Submit the pull request.

### 📝 9. Wait for Review

A project maintainer will review your pull request. They may request changes before it can be merged.

Thanks again for contributing to the DataStage community! 🙏
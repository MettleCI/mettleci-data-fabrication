# MettleCI Data Fabrication Generator Bundles

## Using these bundle files

Instructions on how to download and use these bundle files to provide new data fabrication capabilities for MettleCI Workbench can be found [here](https://docs.mettleci.io/datafab).

Instructions on how to create your own custom data fabrication capabilities for MettleCI Workbench can also be found [under the same documentation section](https://docs.mettleci.io/datafab).

## How to Submit a custom generator bundle via a pull request

Thank you for contributing! Please follow the steps below to create a pull request and submit your generator bundle file to this repository.

### 📁 1. Fork the repository

1. Go to the [main repository page](https://github.com/MettleCI/mettleci-data-fabrication).
2. Click the **Fork** button (top right) to create a copy of the repository in your own GitHub account.

### 🔀 2. Clone your fork

1. Clone your forked repository to your local machine:
```bash
git clone https://github.com/MettleCI/mettleci-data-fabrication.git
cd https://github.com/MettleCI/mettleci-data-fabrication
```

### 📄 3. Add your JSON file

1. Place your JSON file in the `/bundles` directory.  

Instructions on creating a custom data fabrication bundle file can be found in [the documentation](https://docs.mettleci.io/datafab).

### 📋 4. Add a test script (optional)

1. Optionally, place a test script in the `/tests` directory.  

The time taken to approve your submission will be shorter if you provide a script which demonstrates the operation of your genreators.  This is as simple a providing a file containing a `mettleci fabrication test` command for each of your generators.  The `bundles/tests/test_stocks.sh` file provides an example test script you can use for guidance. 

### ✅ 5. Run pre-commit checks (required)

1. Ensure you have checked your generator using the MettleCI command line to ensure your JSON file is properly formatted and adheres to the repository's standards:
```bash
mettleci fabrication test -path bundles/your-bundle-file.json -generator {your-generator-name}
```

- All submitted generators must function correctly and produce valid output without errors. Please test your generator thoroughly before committing it, using the `mettleci fabrication test` command documentated [here](https://datamigrators.atlassian.net/wiki/spaces/MCIDOC/pages/3285811201/Fabrication+Test+Command).
- Submissions that fail due to runtime exceptions, invalid bundle structures, or improper formatting may be rejected or require revision. Ensuring that your generators run cleanly is essential to maintaining the quality and reliability of this repository.

### ✅ 6. Commit your changes

1. ⚠️ **Verify that your dunbundlke file does not contain any Intellectual Property or Personally Identifiable Information.**
2. Commit your work to your fork:
```bash
git add bundles/your-bundle-file.json
git commit -m "{description}"
```

... where `{description}` describes the type of data created by your bundle file. e.g., "Added stock market data generator bundle".

**Branching Policy**

Please do not create a new branch when making your contribution. All pull requests should be made directly against the main branch of the repository. Contributions made from feature or topic branches will not be accepted. To keep things simple and consistent, work in your fork's main branch and open your pull request from there.

### 🔄 7. Push to your fork

1. Push your changes to your fork on GitHub:
```bash
git push origin main
```

### 🚀 8. Open a pull request

1. Visit your fork on GitHub.
2. Click the **Compare & pull request** button.
3. Fill in a meaningful title and description.
4. Submit the pull request.

### 📝 9. Wait for Review

A project maintainer will review your pull request. They may request changes before it can be merged.

Thanks again for contributing to the DataStage community! 🙏
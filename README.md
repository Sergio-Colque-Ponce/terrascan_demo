![Terrascan](https://raw.githubusercontent.com/tenable/runterrascan.io/main/static/images/TerrascanTM_BY_Logo.png)

[![GitHub release](https://img.shields.io/github/release/tenable/terrascan)](https://github.com/tenable/terrascan/releases/latest)

# Terrascan Demo with Terraform

This project demonstrates how to use [Terrascan](https://github.com/tenable/terrascan) to scan Terraform code for security vulnerabilities.

## 🛠️ Project Structure

- `main.tf` - Contains vulnerable Terraform configuration.
- `main_fixed.tf` - Secure version of the Terraform configuration.
- `.github/workflows/terrascan.yml` - GitHub Actions workflow that automatically scans Terraform code using Terrascan.

## ✅ Prerequisites

Make sure you have the following installed locally:

- [Terraform](https://developer.hashicorp.com/terraform/install)
- [Terrascan](https://github.com/tenable/terrascan#installation)
- Git

## 🚀 How to Use This Project

### 1. Clone the Repository

```bash
git clone https://github.com/Sergio-Colque-Ponce/terrascan-demo.git
cd terrascan-demo
```

### 2. Run Terrascan Locally

To scan the vulnerable Terraform file (`main.tf`):

```bash
terrascan scan -t aws -f main.tf
```

To scan the secure version:

```bash
terrascan scan -t aws -f main_fixed.tf
```

You’ll see Terrascan report vulnerabilities for `main.tf`, while `main_fixed.tf` should pass without issues.

### 3. Using Terrascan in GitHub Actions

This repository includes a pre-configured GitHub Actions workflow in `.github/workflows/terrascan.yml`. Every push or pull request will trigger a security scan on your Terraform files.

#### 📦 GitHub Actions Configuration

- Automatically installs Terrascan
- Scans the repository
- Fails the workflow if critical issues are found

You can view the results in the **Actions** tab of your GitHub repository.

## 📄 Output Example

Terrascan will produce an output like:

```
Violation detected:
  Rule Name        : aws-s3-enable-bucket-encryption
  Severity         : HIGH
  File             : main.tf
  Line             : 5
  Description      : S3 bucket encryption should be enabled
```

## 📚 Resources

- [Terrascan Documentation](https://docs.tenable.com/terrascan)
- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)

---

Happy Scanning! 🛡️

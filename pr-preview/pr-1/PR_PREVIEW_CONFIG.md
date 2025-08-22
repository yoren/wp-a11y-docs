# PR Preview Configuration Guide

This document outlines the required repository configuration for the Deploy PR Preview workflow to function properly.

## Repository Settings Required

### 1. GitHub Pages Configuration
Navigate to **Settings** > **Pages** in your repository and configure:

- **Source**: Select "Deploy from a branch"
- **Branch**: Select `gh-pages` branch (this will be created automatically by the workflow)
- **Folder**: Select `/ (root)` 

![GitHub Pages Settings](https://github.com/rossjrw/pr-preview-action/blob/main/.github/deployment-settings.png)

### 2. Actions Permissions
Navigate to **Settings** > **Actions** > **General** > **Workflow permissions** and ensure:

- **✅ Read and write permissions** is selected
- **✅ Allow GitHub Actions to create and approve pull requests** is checked

This allows the workflow to:
- Deploy to the `gh-pages` branch
- Leave comments on pull requests with preview links
- Update deployments when new commits are pushed

### 3. Secrets Configuration
No additional secrets are required. The workflow uses the default `GITHUB_TOKEN` with the permissions granted above.

## How It Works

1. **When a PR is opened/updated**: The workflow builds your Jekyll site and deploys it to `gh-pages` branch under `/pr-preview/pr-{number}/`
2. **Preview URL format**: `https://{owner}.github.io/{repo}/pr-preview/pr-{number}/`
3. **When a PR is closed**: The workflow automatically cleans up the preview deployment
4. **Comments**: A comment is automatically posted on the PR with a link to the preview

## Workflow Features

- ✅ **Ruby/Jekyll build process**: Uses proper Jekyll build with Ruby 3.3.6
- ✅ **Correct output directory**: Deploys from `_site` (Jekyll's default output)
- ✅ **Proper baseurl**: Configures Jekyll with the correct preview path
- ✅ **Production environment**: Builds with `JEKYLL_ENV=production`
- ✅ **Automatic cleanup**: Removes preview when PR is closed
- ✅ **Concurrency control**: Prevents conflicts between deployments

## Troubleshooting

### Common Issues:

1. **"Permission denied" errors**: Ensure Actions have "Read and write permissions" (see step 2 above)
2. **Pages not deploying**: Verify GitHub Pages is configured to deploy from `gh-pages` branch (see step 1 above)
3. **Build failures**: Check that all Jekyll dependencies are properly specified in `Gemfile`

### Verifying Configuration:

1. Create a test PR to trigger the workflow
2. Check the Actions tab for workflow execution
3. Look for a comment on the PR with the preview link
4. Verify the preview site loads correctly

## Compatibility

This workflow is designed to work alongside the existing `jekyll.yml` workflow that deploys to GitHub Pages on the main branch. The two workflows are compatible and won't interfere with each other.
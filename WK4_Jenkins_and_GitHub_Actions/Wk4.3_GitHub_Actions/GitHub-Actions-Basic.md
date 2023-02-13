# GitHub Actions Basic

Quickstart doc: https://docs.github.com/en/actions/quickstart

## Understanding the workflow file

https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions#understanding-the-workflow-file

## Encrypted secrets

https://docs.github.com/en/actions/security-guides/encrypted-secrets

## Replace environment variables

https://github.com/danielr1996/envsubst-action

```yml
      - name: Replace Environment Variables
        uses: danielr1996/envsubst-action@1.0.0
        env:
          PORT: ${{ secrets.PORT }}
          DB_HOST: ${{ secrets.DB_HOST }}
          DB_USERNAME: ${{ secrets.DB_USERNAME }}
          DB_PORT: ${{ secrets.DB_PORT }}
          DB_PASSWORD: ${{ secrets.DB_PASSWORD }}
          DB_NAME: ${{ secrets.DB_NAME }}
        with:
          input: deployment.yml
          output: deploy.yml
```

## Manually triggered workflows

https://docs.github.com/en/actions/using-workflows/triggering-a-workflow#defining-inputs-for-manually-triggered-workflows

```yml
on:
  workflow_dispatch:
```
This is a static HTML site for xaviershay.com.

    bin/dev      # Serve locally on port 3000
    bin/publish  # Publish to S3. AWS creds should be `.env`

Redirects (and other config) are specified in `s3_website.yml`.

Tested in Chrome and Firefox, not IE. CSS fixes welcome.

## Credentials

Add `S3_ID` and `S3_SECRET` environment variables in
[`.env`](https://github.com/bkeepers/dotenv#usage).

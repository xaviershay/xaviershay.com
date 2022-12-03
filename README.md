This is a static HTML site for xaviershay.com.

    bin/dev         # Serve locally on port 3000
    bin/publish-v2  # Publish to S3. `aws login` should have succeeded.

Redirects (and other config) are specified in `s3_website.yml`.

Tested in Chrome and Firefox, not IE. CSS fixes welcome.

## Credentials

Add `S3_ID` and `S3_SECRET` environment variables in
[`.env`](https://github.com/bkeepers/dotenv#usage).

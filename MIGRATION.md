# Migration

The generic Genesis distribution must not contain knowledge from a particular
application.

Remove:

- company names
- application names
- private package names
- internal URLs
- internal credentials
- internal environment variables
- repository-specific architectural assumptions

Keep:

- engineering procedures
- discovery methodology
- requirement discipline
- testing methodology
- memory methodology
- adaptation methodology

Repository-specific knowledge belongs in the target repository's `.genesis/`.

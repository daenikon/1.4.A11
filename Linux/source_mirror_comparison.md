# TL;DR
Rsync is obvious winner. The only downside from using rsync is it's not as widely accessible as HTTP(S)

# Rsync
- Only transfers the changes between the local and remote trees. Reduces bandwidth and time.
- Initial sync takes some time.

# HTTPS
- Encrypts Data. Security+, Encryption/Decription add computational overhead-
- No Delta Transfers unlike rsync

# HTTP
- Https without security, so also no delta transfers.


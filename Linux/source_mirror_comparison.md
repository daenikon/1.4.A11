# TL;DR
Rsync is obvious winner. The only downside from using rsync is it's not as widely accessible as HTTP(S)

# FTP (File Transfer Protocol)
- Efficient for large files
- Widely supported

# Rsync (Remote sync)
- Efficient overall (Delta transfers)
- Can be CPU-Intensive
- Only transfers the changes between the local and remote trees. Reduces bandwidth and time.
- Initial sync takes some time.

# HTTP
- Simple

# HTTPS
- Simple and Secure
- Encrypts Data. Security+, Encryption/Decription add computational overhead-
- No Delta Transfers unlike rsync

FROM vault:1.0.2

RUN mkdir -p /vault/plugins \
 && wget https://12-360921677-gh.circle-artifacts.com/0/vault-plugin-secrets-cognito-linux-amd64 -O /vault/plugins/cognito \
 && chown vault:vault /vault/plugins/cognito \
 && chmod u+x /vault/plugins/cognito

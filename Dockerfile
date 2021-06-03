FROM vault:1.0.2

RUN mkdir -p /vault/plugins \
 && wget https://9-370960040-gh.circle-artifacts.com/0/vault-plugin-secrets-cognito-linux-amd64 -O /vault/plugins/cognito \
 && chown vault:vault /vault/plugins/cognito \
 && chmod u+x /vault/plugins/cognito \
 && setcap cap_ipc_lock=+ep /vault/plugins/cognito

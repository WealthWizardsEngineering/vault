FROM vault:1.7.3

ENV PLUGIN_VERSION=0.0.2

RUN mkdir -p /vault/plugins \
 && wget https://github.com/WealthWizardsEngineering/vault-plugin-secrets-cognito/releases/download/v${PLUGIN_VERSION}/vault-plugin-secrets-cognito-linux-amd64 -O /vault/plugins/cognito \
 && chown vault:vault /vault/plugins/cognito \
 && chmod u+x /vault/plugins/cognito \
 && setcap cap_ipc_lock=+ep /vault/plugins/cognito

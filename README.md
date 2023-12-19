# Keycloak Auth Provider

Use as InitContainer:
```
spec:
  containers:
    initContainers:
      auth-provider:
        image: quay.io/vshn/keycloak-auth-provider:latest
        imagePullPolicy: IfNotPresent
        command:
          - sh
        args:
          - -c
          - |
            echo "Copying auth-providers..."
            cp -R /auth-providers/* /providers/
        volumeMounts:
        - mountPath: /providers
          name: providers
  volumes:
    - emptyDir: {}
      name: providers
```

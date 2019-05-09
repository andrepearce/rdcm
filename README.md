# Route53 Domain Certificate Manager

The purpose of this repository is to provide a simple and automated method to generate a certificate for an AWS Route53 registered domain. This utility uses [Let's Encrypt](https://letsencrypt.org/) to sign the certificates.

## Quickstart

Docker run stuff or maybe compose..

##


During the certificate creation process this utlity will need to make temporary changes to your AWS Route53 hosted zone to prove ownership of the domain to [Let's Encrypt](https://letsencrypt.org/). The following is a summ


Volume Mounts -
    - /etc/letsencrypt (R do check in python)

Inputs ENV-
    - RDCM_LOG_LEVEL (NR defaults INFO)
    - DOMAINS (R comma seperated)
    - EMAIL (R do sanity check on this)
    - CERT_MODE (defaults to create - options are create, update, delete, renew)
        - create - will create new certificate
            - AWS_ACCESS_KEY (optional - if none specified then it will just try assume instance role)
            - AWS_SECRET_KEY (optional - if none specified then it will just try assume instance role)
        - update - will extend and renew exisitng cert V2
            - To define additional ENVs
        - delete - will revoke and delete certificate
            - To define additional ENVs
        - renew - will renew a cert
            - To define additional ENVs
    - ADV_CERTBOT_ARGS - To be defined


Outputs -
    - Python Logger output
    - Location or outcome of the reuqest
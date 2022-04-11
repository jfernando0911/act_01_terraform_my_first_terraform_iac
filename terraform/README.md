# Activity 01 - Terraform My First Terraform iac

These are the outputs when the following commands are executed

## Terraform validate

```
$ terraform validate
Success! The configuration is valid.
```

----

## Terraform plan

```
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.nginx will be created
  + resource "docker_container" "nginx" {
      + attach           = false
      + bridge           = (known after apply)
      + command          = (known after apply)
      + container_logs   = (known after apply)
      + entrypoint       = (known after apply)
      + env              = (known after apply)
      + exit_code        = (known after apply)
      + gateway          = (known after apply)
      + hostname         = (known after apply)
      + id               = (known after apply)
      + image            = (known after apply)
      + init             = (known after apply)
      + ip_address       = (known after apply)
      + ip_prefix_length = (known after apply)
      + ipc_mode         = (known after apply)
      + log_driver       = "json-file"
      + logs             = false
      + must_run         = true
      + name             = "tutorial"
      + network_data     = (known after apply)
      + read_only        = false
      + remove_volumes   = true
      + restart          = "no"
      + rm               = false
      + security_opts    = (known after apply)
      + shm_size         = (known after apply)
      + start            = true
      + stdin_open       = false
      + tty              = false

      + healthcheck {
          + interval     = (known after apply)
          + retries      = (known after apply)
          + start_period = (known after apply)
          + test         = (known after apply)
          + timeout      = (known after apply)
        }

      + labels {
          + label = (known after apply)
          + value = (known after apply)
        }

      + ports {
          + external = 8000
          + internal = 80
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

  # docker_image.nginx will be created
  + resource "docker_image" "nginx" {
      + id           = (known after apply)
      + keep_locally = false
      + latest       = (known after apply)
      + name         = "nginx:latest"
      + output       = (known after apply)
      + repo_digest  = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these
actions if you run "terraform apply" now.
```
----

## Terraform apply 

Same output as $ terraform plan but it asks if you want to create the infrastructure.

```
$ 
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_image.nginx: Creating...
docker_image.nginx: Still creating... [10s elapsed]
docker_image.nginx: Still creating... [20s elapsed]
docker_image.nginx: Still creating... [30s elapsed]
docker_image.nginx: Still creating... [40s elapsed]
docker_image.nginx: Still creating... [50s elapsed]
docker_image.nginx: Still creating... [1m0s elapsed]
docker_image.nginx: Still creating... [1m10s elapsed]
docker_image.nginx: Still creating... [1m20s elapsed]
docker_image.nginx: Still creating... [1m30s elapsed]
docker_image.nginx: Still creating... [1m40s elapsed]
docker_image.nginx: Still creating... [1m50s elapsed]
docker_image.nginx: Still creating... [2m0s elapsed]
docker_image.nginx: Still creating... [2m10s elapsed]
docker_image.nginx: Still creating... [2m20s elapsed]
docker_image.nginx: Creation complete after 2m23s [id=nginx:latest]
docker_container.nginx: Creating...
docker_container.nginx: Creation complete after 1s [id=]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```

## Terraform destroy

```
Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

docker_container.nginx: Destroying... [id=~]
docker_container.nginx: Destruction complete after 0s
docker_image.nginx: Destroying... [id=~~~~~nginx:latest]
docker_image.nginx: Destruction complete after 0s

Destroy complete! Resources: 2 destroyed.
```









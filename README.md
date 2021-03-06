# AMI Automation on AWS with Hashicorp Packer 

**_NOTE:_** Please update your `access_key` and `secret_key` in each json files before running the below commands.

## 1. Building First AMI using Packer

```
SπMESH~[packer (main)]-$ cd 1-AMI_Using_Packer

SπMESH~[1-AMI_Using_Packer (main)]-$ packer build first_image.json
```

## 2. Building Nginx AMI using Provisioners

```
SπMESH~[packer (main)]-$ cd 2-Custom_Configs

SπMESH~[2-Custom_Configs (main)]-$ packer build provisioners.json
```

## 3. Building Nginx AMI using Script Provisioners

```
SπMESH~[packer (main)]-$ cd 3-Script_Provisioners

SπMESH~[3-Script_Provisioners (main)]-$ packer build script_provisioners.json
```

## 4. Building Nginx AMI using File Provisioners

```
SπMESH~[packer (main)]-$ cd 4-File_Provisioners

SπMESH~[4-File_Provisioners (main)]-$ packer build file_provisioners.json
```

## 5. Building AMI on Multi Cloud Providers

```
SπMESH~[packer (main)]-$ 

```

## 6. Building Nginx AMI using Post Processors

```
SπMESH~[packer (main)]-$ cd 6-Post_Processors

SπMESH~[6-Post_Processors (main)]-$ packer build post_processors.json
```

After completion of above command, we will get the 2 new files in same folder:
```
SπMESH~[6-Post_Processors (main)]-$ ll
total 24
-rw-r--r--  1 someshp  staff   357B Aug 16 19:10 output.json
-rw-r--r--  1 someshp  staff   385B Aug 16 19:10 packer_amazon-ebs_aws.box
-rw-r--r--  1 someshp  staff   864B Aug 16 17:05 post_processors.json
```

```
SπMESH~[6-Post_Processors (main)]-$ cat output.json
ββββββββ¬ββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββ
       β File: output.json
ββββββββΌββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββ
   1   β {
   2   β   "builds": [
   3   β     {
   4   β       "name": "amazon-ebs",
   5   β       "builder_type": "amazon-ebs",
   6   β       "build_time": 1629121237,
   7   β       "files": null,
   8   β       "artifact_id": "ap-south-1:ami-004b5504cbd9b11c2",
   9   β       "packer_run_uuid": "340131c3-b93a-0a95-ccec-c99c32475740",
  10   β       "custom_data": null
  11   β     }
  12   β   ],
  13   β   "last_run_uuid": "340131c3-b93a-0a95-ccec-c99c32475740"
  14   β }
ββββββββ΄ββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββ
```

## 7. Building Nginx AMI using User defined Variables

```
SπMESH~[packer (main)]-$ cd 7-User_Variables

SπMESH~[7-User_Variables (main)]-$ packer build -var "description=Nginx-Server-Somesh" -var "version=1.1" user_variables.json

SπMESH~[7-User_Variables (main)]-$ packer build -var-file=variables.json user_variables.json

```

## 8. Building Nginx AMI using environment Variables

```
SπMESH~[packer (main)]-$ cd 8-Environment_Variables

SπMESH~[8-Environment_Variables (main)]-$ export ACCESS_KEY="AKIAUGYH525YZ3PPLLH"
SπMESH~[8-Environment_Variables (main)]-$ export SECRET_KEY="KLda2utRNKgq839yzppU+nEbUU8Qje0Ce+SapnaW"

SπMESH~[8-Environment_Variables (main)]-$ packer build env_variables.json

```